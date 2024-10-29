defmodule GuessingGame do
  def compare(_secret_number), do: "Make a guess"
  def compare(_secret_number, guess) when is_atom(guess), do: "Make a guess"
  def compare(secret_number, guess) when abs(secret_number - guess) == 1, do: "So close"
  def compare(secret_number, guess) when secret_number < guess, do: "Too high"
  def compare(secret_number, guess) when secret_number > guess, do: "Too low"
  def compare(secret_number, guess) when secret_number == guess, do: "Correct"
end
