defmodule Delphi.EventsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Delphi.Events` context.
  """

  @doc """
  Generate a event.
  """
  def event_fixture(attrs \\ %{}) do
    {:ok, event} =
      attrs
      |> Enum.into(%{
        completed: true,
        description: "some description",
        name: "some name",
        when: ~N[2023-06-03 23:17:00]
      })
      |> Delphi.Events.create_event()

    event
  end
end
