defmodule Delphi.TasksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Delphi.Tasks` context.
  """

  @doc """
  Generate a task.
  """
  def task_fixture(attrs \\ %{}) do
    {:ok, task} =
      attrs
      |> Enum.into(%{
        completed: true,
        description: "some description",
        duration: 42,
        name: "some name",
        when: ~N[2023-06-04 00:26:00]
      })
      |> Delphi.Tasks.create_task()

    task
  end
end
