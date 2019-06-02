defmodule RPG do
  def points_spent(abilities) do
    %{strength: str, dexterity: dex, intelligence: int} = abilities
    total_spent = ((dex + int) * 3) + (str * 2)
    IO.puts "Total points spent: #{total_spent}"
  end
end
