defmodule Workshop.Exercise.FizzbuzzWithGuardsCheck do
  use Workshop.Validator
  require GuardedFizzBuzz

  verify "verify GuardedFizzBuzz.translate(1)" do
    (GuardedFizzBuzz.translate(1) == 1 && :ok) || {:error, "1 expected"}
  end

  verify "verify GuardedFizzBuzz.translate(5)" do
    (GuardedFizzBuzz.translate(5) == "fizz" && :ok) || {:error, "fizz expected"}
  end

  verify "verify GuardedFizzBuzz.translate(3)" do
    (GuardedFizzBuzz.translate(3) == "buzz" && :ok) || {:error, "buzz expected"}
  end

  verify "verify GuardedFizzBuzz.translate(45)" do
    (GuardedFizzBuzz.translate(45) == "fizzbuzz" && :ok) || {:error, "fizzbuzz expected"}
  end
end
