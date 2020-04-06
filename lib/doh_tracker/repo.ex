defmodule DohTracker.Repo do
  use Ecto.Repo,
    otp_app: :doh_tracker,
    adapter: Ecto.Adapters.Postgres
end
