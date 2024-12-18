defmodule HighScore do

  @initial_score 0

  def new(), do: %{}

  def add_player(score_map, name, score \\ @initial_score) do
    Map.put(score_map, name, score)
  end

  def remove_player(scores, name) do
    Map.delete(scores, name)
  end

  def reset_score(scores, name) do
    Map.update(scores, name, @initial_score, fn _ -> 0 end)
  end

  def update_score(scores, name, score) do
    Map.update(scores, name, score, &(&1 + score))
  end

  def get_players(scores) do
    Map.keys(scores)
  end
end
