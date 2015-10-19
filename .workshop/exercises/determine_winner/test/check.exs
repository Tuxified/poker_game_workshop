defmodule Workshop.Exercise.DetermineWinnerCheck do
  use Workshop.Validator
  use ExUnit.Case
  import Hand

  test "straight flush beats four of kind" do
    assert(determine_score(straight_flush) > determine_score(four_of_kind))
  end

  test "straight flush beats ace straith flush" do
    assert(determine_score(straight_flush) > determine_score(ace_straight_flush))
  end

  test "four of kind beats full house" do
    assert(determine_score(four_of_kind) > determine_score(full_house))
  end

  test "four of kind beats two pairs" do
    assert(determine_score(four_of_kind) > determine_score(two_pairs))
  end

  test "full house beats flush" do
    assert(determine_score(full_house) > determine_score(flush))
  end

  test "flush beats straight" do
    assert(determine_score(flush) > determine_score(straight))
  end

  test "straight beats three of kind" do
    assert(determine_score(straight) > determine_score(three_of_kind))
  end

  test "three of kind beats two pairs" do
    assert(determine_score(three_of_kind) > determine_score(two_pairs))
  end

  test "higher four of kind" do
    assert(determine_score(higher_four_of_kind) > determine_score(four_of_kind))
  end

  test "one pair beats something" do
    assert(determine_score(one_pair) > determine_score(something))
  end

  defp straight_flush do
    [ [:hearts, 3], [:hearts, 4], [:hearts, 5], [:hearts, 6], [:hearts, 7] ]
  end

  defp ace_straight_flush do
    [ [:hearts, 2], [:hearts, 3], [:hearts, 4], [:hearts, 5], [:hearts, :ace]  ]
  end

  defp four_of_kind do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 5], [:hearts, 7] ]
  end

  defp higher_four_of_kind do
    [ [:hearts, 6], [:spades, 6], [:diamonds, 6], [:clubs, 6], [:hearts, 7] ]
  end

  defp full_house do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 6], [:hearts, 6] ]
  end

  defp flush do
    [ [:hearts, 3], [:hearts, 5], [:hearts, 6], [:hearts, 7], [:hearts, :jack] ]
  end

  defp straight do
    [ [:hearts, 4], [:spades, 5], [:diamonds, 6], [:clubs, 7], [:hearts, 8] ]
  end

  defp three_of_kind do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 5], [:clubs, 6], [:hearts, 7] ]
  end

  defp two_pairs do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 6], [:clubs, 6], [:hearts, 7] ]
  end

  defp one_pair do
    [ [:hearts, 5], [:spades, 5], [:diamonds, 6], [:clubs, :ace], [:hearts, 7] ]
  end

  defp something do
    [ [:hearts, 5], [:spades, 4], [:diamonds, 6], [:clubs, :jack], [:hearts, 7] ]
  end

  verify "all tests pass" do
    ((%{failures: 0} = ExUnit.run) && :ok) || ExUnit.start && {:error, "Some tests have failed"}
  end
end
