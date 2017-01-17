defmodule TripPlanner.Repo.Migrations.CreatePlan do
  use Ecto.Migration

  def change do
    create table(:plans) do
      add :title, :string
      add :description, :string
      add :hash, :string
      add :slug, :string
      add :user_id, references(:users)
      add :start_date, :date
      add :end_date, :date

      timestamps()
    end

    create index(:plans, [:hash, :slug], unique: true)
  end
end
