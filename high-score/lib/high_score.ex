defmodule HighScore do
  def new() do
    # Implemented the new/0 function
      %{}
  end
  def add_player(scores, name, score \\ 0) do
    # Implemented the add_player/3 function
      Map.put(scores, name, score)
  end
  def remove_player(scores, name) do
    # Implemented the remove_player/2 function
      Map.delete(scores, name)
  end
  def reset_score(scores, name) do
    # Implemented the reset_score/2 function
      cond do
      scores == %{} -> add_player(scores, name)
      true -> Map.replace(scores, name, 0)
      end
  end
  def update_score(scores, name, score) do
    # Implemented the update_score/3 function
      x = Map.get(scores, name)
      cond do
      scores == %{} -> %{name => score}
      true -> Map.replace(scores, name, score + x)
      end
  end
  def get_players(scores) do
    # Implemented the get_players/1 function
      Map.keys(scores)
  end
end