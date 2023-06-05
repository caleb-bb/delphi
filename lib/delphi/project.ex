defmodule Delphi.Projects.Project do
  use Ecto.Schema
  import Ecto.Changeset

  alias Delphi.Tasks.Task

  schema "projects" do
    field :description, :string
    field :title, :string

    has_many :tasks, Task

    timestamps()
  end

  @doc false
  def changeset(project, attrs) do
    project
    |> cast(attrs, [:title, :description])
    |> validate_required([:title, :description])
  end
end
