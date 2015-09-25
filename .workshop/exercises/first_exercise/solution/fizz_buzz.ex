defmodule FizzBuzz do
  import Kernel, except: [if: 2, unless: 2, case: 2]

  def translate(_number) when rem(_number, 15) == 0,  do: "fizzbuzz"
  def translate(_number) when rem(_number, 5) == 0,   do: "fizz"
  def translate(_number) when rem(_number, 3) == 0,   do: "buzz"
  def translate(number),                            do: number
end
