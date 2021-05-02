defmodule Hou.Repo do
  use Ecto.Repo,
    otp_app: :hou,
    adapter: Ecto.Adapters.Postgres
end
