defmodule App.EventsController do
  use App.Web, :controller

  alias App.Events

  def index(conn, _params) do
    events = Repo.all(Events)
    render(conn, "index.json", events: events)
  end

  def show(conn, %{"id" => id}) do
    events = Repo.get!(Events, id)
    render(conn, "show.json", events: events)
  end
end
