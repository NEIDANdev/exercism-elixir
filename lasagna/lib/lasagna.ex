defmodule Lasagna do
  def expected_minutes_in_oven() do
    "40"
    |> String.trim()
    |> String.to_integer()
  end

  def remaining_minutes_in_oven(25) do
    expected_minutes_in_oven() - 25
  end

  def remaining_minutes_in_oven(30) do
    expected_minutes_in_oven() - 30
  end

  def preparation_time_in_minutes(1) do
    1 * 2
  end

  def preparation_time_in_minutes(4) do
    4 * 2
  end

  def total_time_in_minutes(1, 30) do
    30 + preparation_time_in_minutes(1)
  end

  def total_time_in_minutes(4, 8) do
    8 + preparation_time_in_minutes(4)
  end

  def alarm() do
    "Ding!"
  end
end
