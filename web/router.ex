defmodule App.Router do
  use App.Web, :router

  resources "/trainers", App.TrainersController
  options "/trainers", App.TrainersController, :options
  resources "/events", App.EventsController
  options "/events", App.EventsController, :options
end
