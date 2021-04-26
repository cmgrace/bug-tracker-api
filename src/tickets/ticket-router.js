const express = require("express");
const { createNewProject } = require("../projects/project-service");
const TicketService = require("./ticket-service");
const jsonParser = express.json();

const ticketRouter = express.Router();

async function checkTicketExists(req, res, next) {
  try {
    const ticket = await TicketService.getTicketById(
      req.app.get("db"),
      req.params.ticket_id
    );

    if (!ticket) {
      return res
        .status(404)
        .json({ error: { message: "Ticket does not exist" } });
    }
    req.ticket = ticket;
    next();
  } catch (error) {
    next(error);
  }
}

ticketRouter
  .route("/")
  .get((req, res, next) => {
    TicketService.getAllTickets(req.app.get("db"))
      .then((tickets) => {
        res.json(tickets);
      })
      .catch(next);
  })
  .post(jsonParser, (req, res, next) => {
    const {
      name,
      description,
      status,
      assigned_to,
      type,
      project_id,
      priority,

      target_end_date,
      actutal_end_date,
      create_by,
      modified_by,
      visible,
    } = req.body;
    const create_on = req.body.create_on.toString().slice(0, 28);
    const modified_on = req.body.modified_on.toString().slice(0, 28);
    const newItemAdded = {
      name,
      description,
      status,
      assigned_to,
      type,
      project_id,
      priority,
      target_end_date,
      actutal_end_date,
      create_on,
      create_by,
      modified_on,
      modified_by,
      visible,
    };
    for (const [key, value] of Object.entries(newItemAdded))
      if (value == null)
        return res.status(400).json({
          error: { message: `Missing '${key}' in request body` },
        });
    TicketService.createNewTicket(req.app.get("db"), newItemAdded)
      .then((itemAdded) => res.status(201).json(itemAdded))
      .catch(next);
  });

ticketRouter
  .route("/:ticket_id")
  .all(checkTicketExists)
  .patch(jsonParser, (req, res, next) => {
    let {
      id,
      name,
      description,
      status,
      type,
      target_end_date,
      actutal_end_date,
      create_on,
      create_by,
      modified_on,
      modified_by,
      visible,
      assigned_to,
      project_id,
      priority,
    } = req.body;

    if (
      name.length === 0 ||
      description.length === 0 ||
      project_id === -1 ||
      create_on.length === 0 ||
      modified_on === 0
    ) {
      return res
        .status(400)
        .json({ error: { message: "Required column is missing" } });
    }
    const newTicket = {
      id,
      name,
      description,
      status,
      type,
      target_end_date,
      actutal_end_date,
      create_on,
      create_by,
      modified_on,
      modified_by,
      visible,
      assigned_to,
      project_id,
      priority,
    };

    return TicketService.editTicket(req.app.get("db"), newTicket, req.ticket.id)
      .then((newTicket) => {
        return res.status(200).json(newTicket);
      })
      .catch(next);
  })
  .delete((req, res, next) => {
    TicketService.deleteItem(req.app.get("db"), req.params.ticket_id)
      .then((items) => res.json(items))
      .catch(next);
  });

module.exports = ticketRouter;
