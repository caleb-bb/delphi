defmodule Delphi.Repo do
  use Ecto.Repo,
    otp_app: :delphi,
    adapter: Ecto.Adapters.Postgres
end
