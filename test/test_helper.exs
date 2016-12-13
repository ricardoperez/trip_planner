ExUnit.start

Mix.Task.run "ecto.create", ~w(-r TripPlanner.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r TripPlanner.Repo --quiet)
Ecto.Adapters.SQL.Sandbox.mode(TripPlanner.Repo, :manual)

