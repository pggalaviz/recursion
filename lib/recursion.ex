defmodule Recursion do
  @moduledoc """
  Examples of simple recursion vs tail recursion.
  """

  ###
  # Return the sum of all integers of a list
  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  # Tail recursive version of sum/1
  def sum_t(list) do
    do_sum(0, list)
  end
  defp do_sum(current_sum, []) do
    current_sum
  end
  defp do_sum(current_sum, [head | tail]) do
    do_sum(current_sum + head, tail)
  end

  ###
  # Return the length of a list
  def list_length([]), do: 0
  def list_length([_ | tail]) do
    1 + length(tail)
  end

  # Tail recursive version of length/1
  def length_t(list) do
    add_length(0, list)
  end
  defp add_length(current_length, []) do
    current_length
  end
  defp add_length(current_length, [_ | tail]) do
    add_length(current_length + 1, tail)
  end

  ###
  # Take a range and return a list of all integers on it
  def range(a, b) when a > b do
    []
  end
  def range(a, b) do
    [a | range(a + 1, b)]
  end

  # Tail recursive version of range/2
  def range_t(a, b) do
    calc_range(b, a, [])
  end
  defp calc_range(from, to, list) when from < to do
    list
  end
  defp calc_range(from, to, list) do
    calc_range(from - 1, to, [from | list])
  end

  ###
  # Take a list and return a new one with just positive numbers
  def positives([]), do: []
  def positives([head | tail]) when head > 0 do
    [head | positives(tail)]
  end
  def positives([_ | tail]) do
    positives(tail)
  end

  # Tail recursive version of positives/1
  def positives_t(list) do
    pos_list(list, [])
  end
  defp pos_list([], new_list), do: Enum.reverse(new_list)
  defp pos_list([head | tail], new_list) when head > 0 do
    pos_list(tail, [head | new_list])
  end
  defp pos_list([_ | tail], new_list) do
    pos_list(tail, new_list)
  end

end
