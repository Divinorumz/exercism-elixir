defmodule Lasagna do
  def expected_minutes_in_oven, do: 40

  def remaining_minutes_in_oven(minutes), do: Lasagna.expected_minutes_in_oven - minutes

  def preparation_time_in_minutes(minutes), do: minutes * 2

  def total_time_in_minutes(minutes_1, minutes_2), do: minutes_1 * 2 + minutes_2

  def alarm(), do: "Ding!"
end
