defmodule FizzBuzz do
  def build_file(file) do
    file
    |> File.read()
    |> IO.inspect()
    |> handle_verify_file()
  end

  def handle_verify_file({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(fn items -> String.to_integer(items) end)
  end
  def handle_verify_file({:error, reason}), do: "Error read file: #{reason}"
end
