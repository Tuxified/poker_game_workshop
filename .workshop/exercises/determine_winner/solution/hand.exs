defmodule Hand do

  def colours, do: [:hearts, :clubs, :diamonds, :spades]
  def numbers, do: Enum.to_list(2..10) ++ [:jack, :queen, :king, :ace]

  @spec determine_score(list) :: integer
  def determine_score([[a, 2], [a, 3], [a, 4], [a, 5], [a, 14]]), do: 900 # flush starting with ace
  def determine_score([[a, first], [a, _b], [a, _c], [a, _d], [a, fifth]]) do
    # straght or no straight, that's the question
    straight = card_value(fifth) - card_value(first) == 4
    case straight do
      true -> 900 + card_value(fifth)
      false -> 600 + card_value(fifth)
    end
  end

  # Four of a kind
  def determine_score([[_, a], [_, a], [_, a], [_, a], _]), do: 800 + card_value(a)
  def determine_score([_, [_, a], [_, a], [_, a], [_, a]]), do: 800 + card_value(a)

  # Full house
  def determine_score([[_, a], [_, a], [_, b], [_, b], [_, b]]), do: 700 + (card_value(a) * 2) + (card_value(b) * 3)
  def determine_score([[_, b], [_, b], [_, b], [_, a], [_, a]]), do: 700 + (card_value(a) * 3) + (card_value(b) * 2)

  # Flush: five cards of same colour, non-consecutive numbers
  # def determine_score([[a, a1], [a, _a2], [a, _a3], [a, _a4], [a, _a5]]), do: 700 + card_value(a1)

  # TODO: implement straight

  # Three of a kind
  def determine_score([_, _, [_, a], [_, a], [_, a]]), do: 400 + card_value(a)
  def determine_score([[_, a], [_, a], [_, a], _, _]), do: 400 + card_value(a)

  # Two pairs
  def determine_score([_, [_, a], [_, a], [_, b], [_, b]]), do: 300 + card_value(a)
  def determine_score([[_, a], [_, a], [_, a], _, _]), do: 300 + card_value(a)

  # One pair
  def determine_score([[_, a], [_, a], _ , _, _]), do: 200 + card_value(a)
  def determine_score([_, [_, a], [_, a], _, _]), do: 200 + card_value(a)
  def determine_score([_, _, [_, a], [_, a], _]), do: 200 + card_value(a)
  def determine_score([_, _, _, [_, a], [_, a]]), do: 200 + card_value(a)

  # Something
  def determine_score(hand) do
    numbers = hand
      |> Stream.map(fn [_, number] -> number end)
      |> Enum.map(fn number -> card_value(number) end)

    straight = numbers == Enum.to_list(List.first(numbers) .. List.last(numbers))

    case straight do
      true -> 500 + card_value(List.last(numbers))
      false -> numbers |> Enum.sum
    end
  end

  defp card_value(number), do: Enum.find_index(numbers, &(&1 == number))
end
