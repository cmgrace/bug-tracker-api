const ProjectService = {
  getAllProjects(knex) {
    return knex.select("*").from("projects");
  },
  getProjectById(knex, id) {
    return knex.select("*").from("projects").where("id", id).first();
  },
  editProject(knex, project, id) {
    return knex("projects")
      .where({ id })
      .update(project)
      .then(() => knex.select("*").from("projects").where("id", id).first());
  },
  createNewProject(knex, newItemAdded) {
    return knex
      .insert(newItemAdded)
      .into("projects")
      .returning("*")
      .then((rows) => rows[0]);
  },

  deleteItem(knex, project_id) {
    return knex
      .from("projects")
      .where("id", project_id)
      .delete()
      .then(() => Number(project_id));
  },
};
module.exports = ProjectService;
