defmodule FizzBuzz do
  def build_file(file) do
    file
    |> File.read()
    |> IO.inspect()
    |> handle_verify_file()
  end

  defp handle_verify_file({:ok, result}) do
    result = result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)

    {:ok, result}
  end
  defp handle_verify_file({:error, reason}), do: {:error, "Error read file: #{reason}"}

  defp convert_and_evaluate_numbers(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  defp evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzBuzz
  defp evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  defp evaluate_numbers(number) when rem(number, 5) == 0, do: :Buzz
  defp evaluate_numbers(number), do: number
end
