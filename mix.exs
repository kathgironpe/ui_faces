defmodule UiFaces.Mixfile do
  use Mix.Project

  def project do
    [app: :ui_faces,
     version: "0.1.8",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps(),
     test_coverage: [tool: ExCoveralls],
     preferred_cli_env: cli_env_for(:test, [
       "coveralls", "coveralls.detail", "coveralls.post",
       "vcr", "vcr.delete", "vcr.check", "vcr.show"
     ])]
  end

  def application do
    [applications: [:logger, :httpotion, :poison]]
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.0"},
      {:poison, ">= 3.1.0"},
      {:credo, "~> 0.8.0", only: [:dev, :test]},
      {:ex_doc, ">= 0.18.0", only: :dev},
      {:excoveralls, "~> 0.8.0", only: :test},
      {:exvcr, "~> 0.10.0", only: :test},
      {:inch_ex, "~> 0.5.6", only: :docs},
      {:meck, "~> 0.8.2", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    UIFaces API client for Elixir applications.
    """
  end

  defp cli_env_for(env, tasks) do
    Enum.reduce(tasks, [], fn(key, acc) -> Keyword.put(acc, :"#{key}", env) end)
  end

  defp package do
    [
      name: :ui_faces,
      maintainers: ["Katherine Pe"],
      licenses: ["MIT"],
      links: %{
        "Github" => "https://github.com/katgironpe/ui_faces"
      }
    ]
  end
end
