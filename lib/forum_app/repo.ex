defmodule ForumApp.Repo do
  use Ecto.Repo,
    otp_app: :forum_app,
    adapter: Ecto.Adapters.Postgres
end
