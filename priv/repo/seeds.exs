# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     LoveRed.Repo.insert!(%LoveRed.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

LoveRed.Repo.insert!(%LoveRed.Item{name: "Milk"})
LoveRed.Repo.insert!(%LoveRed.Item{name: "Butter"})
LoveRed.Repo.insert!(%LoveRed.Item{name: "Bread"})
