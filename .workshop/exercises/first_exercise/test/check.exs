defmodule Workshop.Exercise.FirstExerciseCheck do
  use Workshop.Validator
  require FizzBuzz

  verify "verify FizzBuzz.translate(1)" do
    (FizzBuzz.translate(1) == 1 && :ok) || {:error, "1 expected"}
  end

  verify "verify FizzBuzz.translate(5)" do
    (FizzBuzz.translate(5) == "fizz" && :ok) || {:error, "fizz expected"}
  end

  verify "verify FizzBuzz.translate(3)" do
    (FizzBuzz.translate(3) == "buzz" && :ok) || {:error, "buzz expected"}
  end

  verify "verify FizzBuzz.translate(45)" do
    (FizzBuzz.translate(45) == "fizzbuzz" && :ok) || {:error, "fizzbuzz expected"}
  end
end
