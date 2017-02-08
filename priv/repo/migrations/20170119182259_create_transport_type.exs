defmodule TripPlanner.Repo.Migrations.CreateTransportType do
  use Ecto.Migration

  def change do
    create table(:transport_type) do
      add :name, :string
      add :desc, :string
      timestamps()
    end
  end
end
