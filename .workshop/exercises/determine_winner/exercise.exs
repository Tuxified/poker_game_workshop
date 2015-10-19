defmodule Workshop.Exercise.DetermineWinner do
  use Workshop.Exercise

  @title "Determine Winner"
  @weight 7000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Time to find the winning hand :)

  Complete the function determine_score, which will give each hand a score.
  The score of each hand can later on be used to compare/rank hands.

  The ranking is: Straight flush > Four of a kind > Full House > Flush > Straight > Three of a kind > Two pairs > One pair > High card

  Bonus: add some more test cases, hopefully stumbling on edge cases.

  # What's next?
  Get the task for this exercise by executing `mix workshop.task`. When you are
  done writing a solution it can be checked and verified using the
  `mix workshop.check` command.

  When the workshop check pass you can proceed to the next exercise by executing
  the `mix workshop.next` command.

  If you are confused you could try `mix workshop.hint`. Otherwise ask your
  instructor or follow the directions on `mix workshop.help`.
  """

  @task """
  Complete the function determine_score, which will give each hand a score.

  The ranking is: Straight flush > Four of a kind > Full House > Flush > Straight > Three of a kind > Two pairs > One pair > High card
  """

  @hint [
    "remember the exercise about two equal values?",
    "good luck"
  ]
end
