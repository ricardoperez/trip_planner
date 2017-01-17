defmodule TripPlanner.Plan do
  use TripPlanner.Web, :model

  schema "plans" do
    field :title, :string
    field :description, :string
    field :hash, :string
    field :slug, :string
    field :start_date, Ecto.Date
    field :end_date, Ecto.Date

    belongs_to :user, TripPlanner.User

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :description, :hash, :slug, :start_date, :end_date])
    |> validate_required([:title])
  end
end
