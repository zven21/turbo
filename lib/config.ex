defmodule Turbo.Config do
  @moduledoc false

  def default_theme(application \\ :turbo) do
    config(:default_theme, :bootstrap, application)
  end

  def per_page(application \\ :turbo) do
    config(:per_page, 10, application)
  end

  def repo(application \\ :turbo) do
    config(:repo, nil, application)
  end

  defp config(application) do
    Application.get_env(application, Turbo, [])
  end

  defp config(key, default, application) do
    application
    |> config()
    |> Keyword.get(key, default)
    |> resolve_config(default)
  end

  defp resolve_config(value, _default), do: value
end
