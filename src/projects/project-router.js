const express = require("express");
const ProjectService = require("./project-service");
const jsonParser = express.json();

const projectRouter = express.Router();

async function checkProjectExists(req, res, next) {
  try {
    const project = await ProjectService.getProjectById(
      req.app.get("db"),
      req.params.project_id
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

projectRouter
  .route("/")
  .get((req, res, next) => {
    ProjectService.getAllProjects(req.app.get("db"))
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
    ProjectService.createNewProject(req.app.get("db"), newItemAdded)
      .then((itemAdded) => res.status(201).json(itemAdded))
      .catch(next);
  });

projectRouter
  .route("/:project_id")
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

    return ProjectService.editProject(
      req.app.get("db"),
      newProject,
      req.project.id
    )
      .then((newProject) => {
        return res.status(200).json(newProject);
      })
      .catch(next);
  });

projectRouter.route("/favorites/items").get((req, res, next) => {
  ProjectService.getAllRestaurantsInFavorites(req.app.get("db"))
    .then((favorites) => res.json(favorites))
    .catch(next);
});

projectRouter.route("/favorites/items/:fav_id").delete((req, res, next) => {
  ProjectService.deleteItem(req.app.get("db"), req.params.fav_id)
    .then((items) => res.json(items))
    .catch(next);
});

projectRouter.route("/dishes").get((req, res, next) => {
  ProjectService.getAllDishes(req.app.get("db"))
    .then((restaurants) => {
      res.json(restaurants);
    })
    .catch(next);
});

module.exports = projectRouter;
