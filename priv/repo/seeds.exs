# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TripPlanner.Repo.insert!(%TripPlanner.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
TripPlanner.Repo.insert!(%TripPlanner.User{
  first_name: "Tripeiro",
  last_name: "Polino",
  email: "tripeiropolino@email.com",
  date_of_birth: %Ecto.Date{year: 1989, month: 4, day: 17}
})
