defmodule ApiProject01Web.DocumentView do
  use ApiProject01Web, :view
  use JaSerializer.PhoenixView

  attributes([:name, :published, :content, :view, :project_id])
  # alias ApiProject01Web.DocumentView

  # def render("index.json", %{documents: documents}) do
  #   %{data: render_many(documents, DocumentView, "document.json")}
  # end

  # def render("show.json", %{document: document}) do
  #   %{data: render_one(document, DocumentView, "document.json")}
  # end

  # def render("document.json", %{document: document}) do
  #   %{
  #     id: document.id,
  #     name: document.name,
  #     content: document.content,
  #     view: document.view,
  #     published: document.published,
  #     project_id: document.project_id
  #   }
  # end
end
