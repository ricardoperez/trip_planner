defmodule TripPlanner.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :name, :string
      add :desc, :string
      add :start, :datetime
      add :finish, :datetime
      add :done, :boolean, default: false
      add :location_lat, :float
      add :location_long, :float
      add :plan_id, references(:plans)
      timestamps()
    end
  end
end
