defmodule RecursionTest do
  use ExUnit.Case
  doctest Recursion

  test "sum" do
    assert Recursion.sum([1, 2, 3]) === 6
  end
  test "tail recursive sum" do
    assert Recursion.sum_t([1, 2, 3]) === 6
  end

  test "list lenght" do
    assert Recursion.list_length([1, 2, 3]) === 3
  end
  test "tail recursive list lenght" do
    assert Recursion.length_t([1, 2, 3]) === 3
  end

  test "create list from range" do
    assert Recursion.range(2,6) == [2, 3, 4, 5, 6]
  end
  test "tail recursive list from range" do
    assert Recursion.range_t(2,6) == [2, 3, 4, 5, 6]
  end

  test "filter positives" do
    assert Recursion.positives([-3, 5, -2, 4, 6]) == [5, 4, 6]
  end
  test "tail recursive positives filter" do
    assert Recursion.positives_t([-3, 5, -2, 4, 6]) == [5, 4, 6]
  end
end
