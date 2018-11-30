defmodule Turbo do
  @moduledoc """
  Documentation for Turbo.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Turbo.hello()
      :world

  """
  def hello do
    :world
  end

  def default_theme do
    Turbo.Config.default()
  end
end
