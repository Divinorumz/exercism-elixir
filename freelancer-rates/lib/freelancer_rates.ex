defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    before_discount * (1 - discount / 100)
  end

  def monthly_rate(hourly_rate, discount) do
    FreelancerRates.daily_rate(hourly_rate) * 22
    |> FreelancerRates.apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    daily = FreelancerRates.daily_rate(hourly_rate)
    discount = FreelancerRates.apply_discount(daily, discount)
    budget / discount |> Float.floor(1)

  end
end
