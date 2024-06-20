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
    time = ~U[2025-01-01 00:00:00Z]

    now =  DateTime.utc_now()

    time_till = DateTime.diff(time, now)

    days = div(time_till, 86_400)

    IO.puts(time_till)
    IO.puts(days)

    hours = div(rem(time_till, 86_400), 60 * 60)
    IO.puts(hours)

    mins = div(rem(time_till, 60 * 60), 60)
    IO.puts(mins)

    seconds = rem(time_till, 60)
    IO.puts(seconds)

  end

  def main do
    IO.puts(:main)
  end
end


Example.main()
Example.time_feature()
