defmodule App.EventsView do
  use App.Web, :view

  def render("index.json", %{events: events}) do
    render_many(events, App.EventsView, "events.json")
  end

  def render("show.json", %{events: events}) do
    render_one(events, App.EventsView, "events.json")
  end

  def render("events.json", %{events: events}) do
    %{id: events.id,
      title: events.title,
      description: events.description,
      duration: events.duration,
      start: events.start,
      type: events.type,
      location: events.location,
      resources: events.resources,
      speakers: events.speakers}
  end
end
