defmodule Delphi.Events.Event do
  use Ecto.Schema
  import Ecto.Changeset

  schema "events" do
    field :completed, :boolean, default: false
    field :description, :string
    field :name, :string
    field :when, :naive_datetime

    timestamps()
  end

  @doc false
  def changeset(event, attrs) do
    event
    |> cast(attrs, [:when, :name, :description, :completed])
    |> validate_required([:when, :name, :description, :completed])
  end
end
