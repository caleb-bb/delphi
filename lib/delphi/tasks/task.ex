defmodule Delphi.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Delphi.Projects.Project

  schema "tasks" do
    field :completed, :boolean, default: false
    field :description, :string
    field :duration, :integer
    field :name, :string
    field :when, :naive_datetime

    belongs_to :project, Project, on_replace: :update

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:when, :name, :description, :completed, :duration])
    |> validate_required([:when, :name, :description, :completed, :duration])
  end
end
