defmodule ApiProject01.Management.Document do
  use Ecto.Schema
  import Ecto.Changeset

  schema "documents" do
    field :name, :string
    field :content, :string
    field :view, :integer
    field :published, :boolean

    belongs_to :project, ApiProject01.Management.Project
    timestamps()
  end

  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:name, :content, :view, :published, :project_id])
    |> validate_required([:name])
  end
end
