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
  def hello do
    IO.puts(Float.ceil(1.5))
    IO.puts(Integer.gcd(20, 10))
    :world
  end
end


Example.hello()
