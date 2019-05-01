defmodule CoinChanger do
  @moduledoc """
  Documentation for CoinChanger.
  """

  @doc """
  Converts a number into coins
  """
  def closest_number(number) do
    [0, 1, 2, 5, 10, 20, 50, 100, 200]
    |> Enum.filter(&(&1 <= number))
    |> Enum.min_by(&(number - &1))
  end

  def update_result(result, closest_number) do
    result
    |> List.insert_at(0, closest_number)
  end

  def convert(number) do
    convert([], number)
  end

  def convert(result, number) do 
    closest_number = closest_number(number)
    number = number - closest_number
    result = update_result(result, closest_number)

    case number == 0 do
      true -> result
      false -> convert(result, number) 
    end
  end

end
