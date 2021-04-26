const TicketService = {
  getTicketById(knex, id) {
    return knex.select("*").from("tickets").where("id", id).first();
  },
  editTicket(knex, ticket, id) {
    return knex("tickets")
      .where({ id })
      .update(ticket)
      .then(() => knex.select("*").from("tickets").where("id", id).first());
  },
  getAllTickets(knex) {
    return knex.select("*").from("tickets");
  },

  createNewTicket(knex, newItemAdded) {
    return knex
      .insert(newItemAdded)
      .into("tickets")
      .returning("*")
      .then((rows) => rows[0]);
  },

  deleteItem(knex, ticket_id) {
    return knex
      .from("tickets")
      .where("id", ticket_id)
      .delete()
      .then(() => Number(ticket_id));
  },
};
module.exports = TicketService;
