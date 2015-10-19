defmodule Workshop.Exercise.FizzbuzzWithGuards do
  use Workshop.Exercise

  @title "Fizzbuzz With Guards"
  @weight 2000

  # Write an exercise description that make the user capable of solving the
  # given `@task`.
  @description """
  Same task as previous one, but this time try using guard clauses. Guard clauses
  are expressions which you can add to pattern matches to evaluate values of
  arguments. See: http://elixir-lang.org/getting-started/case-cond-and-if.html
  for more info.

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
  Write a FizzBuzz program using guard statements. Discuss when guards could be
  useful / harmfull
  """

  @hint [
    "check the list of possible guard functions for anything useful"
  ]
end
