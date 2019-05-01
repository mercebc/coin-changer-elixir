defmodule CoinChangerTest do
  use ExUnit.Case
  doctest CoinChanger
  
  test "converts 0 coins into 0" do
    coins = 0
    assert CoinChanger.convert(coins) == [0]
  end

  test "converts 1 coin into 1" do
    coins = 1
    assert CoinChanger.convert(coins) == [1]
  end

  test "converts 5 coin into 5" do
    coins = 5
    assert CoinChanger.convert(coins) == [5]
  end

  test "converts 6 coins into 5 and 1" do
    coins = 6
    assert CoinChanger.convert(coins) == [1, 5]
  end

  test "converts 31 coins into 20, 10 and 1" do
    coins = 31
    assert CoinChanger.convert(coins) == [1, 10, 20]
  end

end
