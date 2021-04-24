const express = require("express");
const UserService = require("./user-service");
const jsonParser = express.json();

const userRouter = express.Router();

async function checkUserExists(req, res, next) {
  try {
    const user = await UserService.getUserById(
      req.app.get("db"),
      req.params.user_id
    );

    if (!user) {
      return res
        .status(404)
        .json({ error: { message: "User does not exist" } });
    }
    req.user = user;
    next();
  } catch (error) {
    next(error);
  }
}

userRouter.route("/").get((req, res, next) => {
  UserService.getAllUsers(req.app.get("db"))
    .then((users) => {
      res.status(200).json(users);
    })
    .catch(next);
});

userRouter
  .route("/:user_id")
  .all(checkUserExists)
  .patch(jsonParser, (req, res, next) => {
    let { id, name, email, registered, role } = req.body;

    if (role.length === 0) {
      return res.status(400).json({ error: { message: "Role is required" } });
    }
    const newUser = {
      id,
      name,
      email,
      registered,
      role,
    };

    return UserService.editUserRole(req.app.get("db"), newUser, req.user.id)
      .then((newUser) => {
        return res.status(200).json(newUser);
      })
      .catch(next);
  });

userRouter.route("/favorites/items").get((req, res, next) => {
  UserService.getAllRestaurantsInFavorites(req.app.get("db"))
    .then((favorites) => res.json(favorites))
    .catch(next);
});

userRouter.route("/favorites/items/:fav_id").delete((req, res, next) => {
  UserService.deleteItem(req.app.get("db"), req.params.fav_id)
    .then((items) => res.json(items))
    .catch(next);
});

userRouter.route("/dishes").get((req, res, next) => {
  UserService.getAllDishes(req.app.get("db"))
    .then((restaurants) => {
      res.json(restaurants);
    })
    .catch(next);
});

module.exports = userRouter;
