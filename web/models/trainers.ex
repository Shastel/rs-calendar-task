defmodule App.Trainers do
  use App.Web, :model

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "trainers" do
    field :name, :string
    field :avatar, :string

    timestamps()
  end
end
