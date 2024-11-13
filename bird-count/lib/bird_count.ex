defmodule BirdCount do
  def today(list) do
    List.first(list)
  end

  def increment_day_count([head | tail]), do: [head + 1 | tail]

  def increment_day_count(_list), do: [1]

  def has_day_without_birds?(list), do: 0 in list

  def total(list) do
    Enum.sum(list)
  end

  def busy_days([head | tail]) when head >= 5 do
    1 + busy_days(tail)
  end

  def busy_days([_head | tail]), do: busy_days(tail)

  def busy_days(_list), do: 0
end
