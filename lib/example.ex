defmodule Membership do
  defstruct [:type, :price]
end

defmodule User do
  defstruct [:name, :membership]
end

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
    gold_membrship = %Membership{type: :gold, price: 25}
    silver_membrship = %Membership{type: :gold, price: 20}
    bronze_membrship = %Membership{type: :gold, price: 15}
    none_membrship = %Membership{type: :gold, price: 0}


    users = [
      %User{name: "Oussama", membership: gold_membrship},
      %User{name: "Salma", membership: silver_membrship},
      %User{name: "Siham", membership: bronze_membrship},
      %User{name: "Mehdi", membership: none_membrship}
    ]

    Enum.each(users, fn %User{name: name, membership: membership} ->
      IO.puts("#{name} has a #{membership.type} membership paying #{membership.price}")
    end)

  end

  def main do
    IO.puts(:main)
  end
end


Example.main()
Example.time_feature()
