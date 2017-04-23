defmodule App.Events do
  use App.Web, :model

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "events" do
    field :title, :string
    field :description, :string
    field :duration, :integer
    field :start, Ecto.DateTime
    field :type, :string
    field :location, :string
    field :resources, { :array, :map }
    field :speakers, { :array, :string }

    timestamps()
  end

end
