defmodule App.TrainersView do
  use App.Web, :view

  def render("index.json", %{trainers: trainers}) do
    render_many(trainers, App.TrainersView, "trainers.json")
  end

  def render("show.json", %{trainers: trainers}) do
    render_one(trainers, App.TrainersView, "trainers.json")
  end

  def render("trainers.json", %{trainers: trainers}) do
    %{id: trainers.id,
      name: trainers.name,
      avatar: trainers.avatar}
  end
end
