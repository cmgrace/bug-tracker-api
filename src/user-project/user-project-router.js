const express = require("express");
const UserProjectService = require("./user-project-service");
const jsonParser = express.json();

const userProjectRouter = express.Router();

async function checkProjectExists(req, res, next) {
  try {
    const project = await UserProjectService.getProjectById(
      req.app.get("db"),
      req.params.user_project_id
    );

    if (!project) {
      return res
        .status(404)
        .json({ error: { message: "Project does not exist" } });
    }
    req.project = project;
    next();
  } catch (error) {
    next(error);
  }
}

userProjectRouter
  .route("/")
  .get((req, res, next) => {
    UserProjectService.getAllUserProjects(req.app.get("db"))
      .then((projects) => {
        res.json(projects);
      })
      .catch(next);
  })
  .post(jsonParser, (req, res, next) => {
    const {
      name,
      description,
      status,
      start_date,
      target_end_date,
      actutal_end_date,
      create_on,
      create_by,
      modified_on,
      modified_by,
      visible,
    } = req.body;
    const newItemAdded = {
      name,
      description,
      status,
      start_date,
      target_end_date,
      actutal_end_date,
      create_on,
      create_by,
      modified_on,
      modified_by,
      visible,
    };
    UserProjectService.createNewProject(req.app.get("db"), newItemAdded)
      .then((itemAdded) => res.status(201).json(itemAdded))
      .catch(next);
  });

userProjectRouter
  .route("/:user_project_id")
  .all(checkProjectExists)
  .patch(jsonParser, (req, res, next) => {
    let { name, email, registered, role } = req.body;

    if (role.length === 0) {
      return res.status(400).json({ error: { message: "Role is required" } });
    }
    const newProject = {
      name,
      email,
      registered,
      role,
    };

    return UserProjectService.editProject(
      req.app.get("db"),
      newProject,
      req.project.id
    )
      .then((newProject) => {
        return res.status(200).json(newProject);
      })
      .catch(next);
  });

userProjectRouter.route("/favorites/items").get((req, res, next) => {
  UserProjectService.getAllRestaurantsInFavorites(req.app.get("db"))
    .then((favorites) => res.json(favorites))
    .catch(next);
});

userProjectRouter.route("/favorites/items/:fav_id").delete((req, res, next) => {
  UserProjectService.deleteItem(req.app.get("db"), req.params.fav_id)
    .then((items) => res.json(items))
    .catch(next);
});

userProjectRouter.route("/dishes").get((req, res, next) => {
  UserProjectService.getAllDishes(req.app.get("db"))
    .then((restaurants) => {
      res.json(restaurants);
    })
    .catch(next);
});

module.exports = userProjectRouter;
