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
    memberships = %{
      gold: :gold,
      silver: :silver,
      bronze: :bronze,
      none: :none
    }

    prices = %{
      gold: 25,
      silver: 20,
      bronze: 15,
      none: 0
    }

    users = [
      {"Oussama", memberships.gold},
      {"Salma", memberships.silver},
      {"Siham", memberships.gold},
      {"Mehdi", memberships.silver}
    ]

    Enum.each(users, fn {name, membership} ->
      IO.puts("#{name} has a #{membership} membership paying #{prices[membership]}")
    end)

  end

  def main do
    IO.puts(:main)
  end
end


Example.main()
Example.time_feature()
