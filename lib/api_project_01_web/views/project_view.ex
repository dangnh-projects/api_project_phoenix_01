defmodule ApiProject01Web.ProjectView do
  use ApiProject01Web, :view
  use JaSerializer.PhoenixView
  # alias ApiProject01Web.ProjectView

  attributes([:title, :discription])

  # def render("index.json", %{projects: projects}) do
  #   %{data: render_many(projects, ProjectView, "project.json")}
  # end

  # def render("show.json", %{project: project}) do
  #   %{data: render_one(project, ProjectView, "project.json")}
  # end

  # def render("project.json", %{project: project}) do
  #   %{id: project.id,
  #     title: project.title,
  #     discription: project.discription}
  # end
end
