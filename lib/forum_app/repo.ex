defmodule ForumApp.Repo do
  use AshPostgres.Repo,
    otp_app: :forum_app
    
  def installed_extensions do
    ["ash-functions", "uuid-ossp", "citext"]
  end
end
