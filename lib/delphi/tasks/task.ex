defmodule Delphi.Tasks.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "tasks" do
    field :completed, :boolean, default: false
    field :description, :string
    field :duration, :integer
    field :name, :string
    field :when, :naive_datetime

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:when, :name, :description, :completed, :duration])
    |> validate_required([:when, :name, :description, :completed, :duration])
  end
end
