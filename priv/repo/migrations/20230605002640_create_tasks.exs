defmodule Delphi.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :when, :naive_datetime
      add :name, :string
      add :description, :string
      add :completed, :boolean, default: false, null: false
      add :duration, :integer

      timestamps()
    end
  end
end
