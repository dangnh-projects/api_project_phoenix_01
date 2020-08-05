defmodule ApiProject01.Repo do
  use Ecto.Repo,
    otp_app: :api_project_01,
    adapter: Ecto.Adapters.Postgres
end
