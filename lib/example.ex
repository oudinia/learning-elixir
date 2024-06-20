defmodule Example do
  @moduledoc """
  Documentation for `Example`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Example.hello()
      :world

  """
  def time_feature do
    time = Time.new!(16, 30, 0, 0)
    date = Date.new!(2025, 1, 1)
    date_time = DateTime.new!(date, time, "Etc/UTC")
    IO.inspect(date_time)
  end

  def main do
    IO.puts(Float.ceil(1.5))
    IO.puts(Integer.gcd(20, 10))


    :world
  end
end


Example.main()
Example.time_feature()
