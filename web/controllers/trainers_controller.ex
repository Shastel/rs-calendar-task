defmodule App.TrainersController do
  import Ecto.Query

  use App.Web, :controller

  alias App.Trainers

  def index(conn, _params) do
    trainers = Repo.all(Trainers)
    render(conn, "index.json", trainers: trainers)
  end

  def show(conn, %{"id" => id}) do
    trainers = Repo.get!(Trainers, id)
    render(conn, "show.json", trainers: trainers)
  end
end
