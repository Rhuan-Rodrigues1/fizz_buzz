defmodule FizzBuzz do
  def build_file(file) do
    file
    |> File.read()
    |> IO.inspect()
    |> handle_verify_file()
  end

  def handle_verify_file({:ok, result}), do: result
  def handle_verify_file({:error, reason}), do: reason
end
