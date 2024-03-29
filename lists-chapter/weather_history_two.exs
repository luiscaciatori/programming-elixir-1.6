defmodule WeatherHistoryTwo do
  def for_location([], _target_loc) do
    []
  end

  def for_location([ head = [_, target_loc, _, _] | tail ], target_loc) do
    [ head | for_location(tail, target_loc) ]
  end

  def for_location([ _ | tail ], target_loc) do
    for_location(tail, target_loc)
  end
end