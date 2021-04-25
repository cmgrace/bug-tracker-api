const UserProjectService = {
  getAllUserProjects(knex) {
    return knex
      .select(
        "user_project.id",
        "project_id",
        "user_id",
        "name",
        "email",
        "registered",
        "role"
      )
      .from("user_project")
      .join("users", "user_project.user_id", "=", "users.id");
  },

  getProjectById(knex, id) {
    return knex.select("*").from("user_projects").where("id", id).first();
  },
  editProject(knex, project, id) {
    return knex("user_projects")
      .where({ id })
      .update(project)
      .then(() =>
        knex.select("*").from("user_projects").where("id", id).first()
      );
  },
  createNewProject(knex, newItemAdded) {
    return knex.insert(newItemAdded).into("user_projects").returning("*");
    //   .then((rows) => rows[0]);
  },

  insertItemToFavorites(knex, newItemAdded) {
    return knex.insert(newItemAdded).into("favorites").returning("*");
    //   .then((rows) => rows[0]);
  },
  deleteItem(knex, fav_id) {
    return knex("favorites")
      .select("fav_id", "restaurant_id")
      .from("favorites")
      .returning("*")
      .where({ fav_id })
      .delete();
  },
};
module.exports = UserProjectService;
