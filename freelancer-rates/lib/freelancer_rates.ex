defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
      x = (before_discount / 100) * discount
      value = before_discount - x
  end

  def monthly_rate(hourly_rate, discount) do
     x= hourly_rate * 8.0 * 22.0
      y = (x / 100) * discount
      value = ceil(x-y)
      value = round(value)
  end

  def days_in_budget(budget, hourly_rate, discount) do
    rate=(hourly_rate * 8)
    disc = (rate / 100) * discount
    discount = rate - disc
    value = budget/discount
    value = Float.floor(value, 1)
    
  end
end
