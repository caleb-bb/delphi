defmodule Delphi.Repo.Migrations.MakeTaskBelongToProject do
  use Ecto.Migration

  def change do
    alter table(:tasks) do
      add(:project_id, references(:projects, on_delete: :nilify_all), null: false)
    end
  end
end
