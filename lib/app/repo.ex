defmodule App.Repo do
  use Ecto.Repo, otp_app: :app, adapter: Mongo.Ecto
end
