defmodule Hand do

  def colours, do: [:hearts, :clubs, :diamonds, :spades]
  def numbers, do: Enum.to_list(2..10) ++ [:jack, :queen, :king, :ace]


  @spec determine_score(list) :: integer
  def determine_score(hand) do
    180 # wrong sport?
  end

  defp card_value(number), do: Enum.find_index(numbers, &(&1 == number))
end
