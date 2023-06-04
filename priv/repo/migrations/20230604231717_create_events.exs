defmodule Delphi.Repo.Migrations.CreateEvents do
  use Ecto.Migration

  def change do
    create table(:events) do
      add :when, :naive_datetime
      add :name, :string
      add :description, :string
      add :completed, :boolean, default: false, null: false

      timestamps()
    end
  end
end
