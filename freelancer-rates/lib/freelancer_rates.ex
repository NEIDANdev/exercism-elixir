defmodule FreelancerRates do
  def daily_rate(hourly_rate) do 
    hourly_rate * 8.0
  end

  def apply_discount(hourly_rate, discount) do
     hourly_rate - (hourly_rate * discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    apply_discount(hourly_rate, discount) * 8 * 22
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    days = budget / (apply_discount(hourly_rate, discount) * 8)
    Float.floor(days, 1)
  end
end
