defmodule TripPlanner.Repo.Migrations.CreateTransport do
  use Ecto.Migration

  def change do
    create table(:transport) do
      add :start, Ecto.DateTime
      add :finish, Ecto.DateTime
      add :done, :boolean, default: false
      add :transport_type_id, references(:transport_type)
      add :from_location_lat, :float
      add :from_location_long, :float
      add :to_location_lat, :float
      add :to_location_long, :float
      timestamps()
    end
  end
end
