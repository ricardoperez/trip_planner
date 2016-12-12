defmodule TripPlanner.Repo.Migrations.CreateUser do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string
      add :encrypted_password, :string
      add :date_of_birth, :date

      timestamps()
    end

  end
end
