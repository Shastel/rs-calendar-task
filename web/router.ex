defmodule App.Router do
  use App.Web, :router

  resources "/trainers", App.TrainersController
  resources "/events", App.EventsController
end
