defmodule Delphi.Projects do
  @moduledoc """
  The Projects context.
  """

  import Ecto.Query, warn: false
  alias Delphi.Repo

  alias Delphi.Projects.Project

  @doc """
  Returns the list of projects.

  ## Examples

      iex> list_projects()
      [%Project{}, ...]

  """
  def list_projects do
    Repo.all(Project)
  end

  @doc """
  Gets a single project.

  Raises if the Project does not exist.

  ## Examples

      iex> get_project!(123)
      %Project{}

  """
  def get_project!(id), do: Repo.get!(Project, id) |> Repo.preload(:tasks)

  @doc """
  Creates a project.

  ## Examples

      iex> create_project(%{field: value})
      {:ok, %Project{}}

      iex> create_project(%{field: bad_value})
      {:error, ...}

  """
  def create_project(attrs \\ %{}) do
    %Project{}
    |> Project.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a project.

  ## Examples

      iex> update_project(project, %{field: new_value})
      {:ok, %Project{}}

      iex> update_project(project, %{field: bad_value})
      {:error, ...}

  """
  def update_project(%Project{} = project, attrs) do
    raise "TODO"
  end

  @doc """
  Deletes a Project.

  ## Examples

      iex> delete_project(project)
      {:ok, %Project{}}

      iex> delete_project(project)
      {:error, ...}

  """
  def delete_project(%Project{} = project) do
    raise "TODO"
  end

  @doc """
  Returns a data structure for tracking project changes.

  ## Examples

      iex> change_project(project)
      %Todo{...}

  """
  def change_project(%Project{} = project, attrs \\ %{}) do
    Project.changeset(project, attrs)
  end
end
