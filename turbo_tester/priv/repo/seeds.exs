# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     TurboTester.Repo.insert!(%TurboTester.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

zven =
  %TurboTester.Accounts.User{
    username: "zven"
  }
  |> TurboTester.Repo.insert!()

for n <- 1..10 do
  %TurboTester.Posts.Post{
    title: "title-#{n}",
    body: "body-#{n}"
  }
  |> TurboTester.Repo.insert!()
end
