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
    memberships = {:bronze, :silver}
    memberships = Tuple.append(memberships, :gold)
    IO.inspect(memberships)

    prices = {5, 10, 25}
    sum = Tuple.sum(prices)
    avg = sum / tuple_size(prices)
    IO.puts(sum)
    IO.puts(avg)

    IO.puts("Average price for #{elem(memberships, 1)} is #{elem(prices, 0)}")
    users = [
      {"Oussama", :gold},
      {"Salma", :gold},
      {"Mom", :gold},
    ]

    Enum.each(users, fn {name, membership} ->
      IO.puts("#{name} has a #{membership} membership.")
    end)


    user1 = {"Oussama", :gold}
    {name, membership} = user1
    IO.puts("#{name} has a #{membership} membership")
  end

  def main do
    IO.puts(:main)
  end
end


Example.main()
Example.time_feature()
