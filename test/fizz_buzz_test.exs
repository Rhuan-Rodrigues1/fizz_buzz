defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build_file/1" do
    test "when a valid file is provided, return converted list " do
      data = {:ok, [1, 2, :fizz, 4, :Buzz, :Buzz, :fizzBuzz, :Buzz, :Buzz]}

      assert FizzBuzz.build_file("numbers.txt") == data
    end

    test "when a invalid file is provided, return error " do
      data = {:error, "Error read file: enoent"}

      assert FizzBuzz.build_file("numberss.txt") == data
    end
  end
end
