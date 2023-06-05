defmodule Delphi.ProjectsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Delphi.Projects` context.
  """

  @doc """
  Generate a project.
  """
  def project_fixture(attrs \\ %{}) do
    {:ok, project} =
      attrs
      |> Enum.into(%{
        description: "some description",
        title: "some title"
      })
      |> Delphi.Projects.create_project()

    project
  end
end
