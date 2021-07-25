defmodule Serverhello.Repo do
  use Ecto.Repo,
    otp_app: :serverhello,
    adapter: Ecto.Adapters.Postgres
end
