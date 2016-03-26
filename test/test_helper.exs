ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Rubberstamp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Rubberstamp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Rubberstamp.Repo)

