defmodule RethinkDB.Ecto.Mixfile do
  use Mix.Project

  @version "0.7.0"

  def project do
    [app: :rethinkdb_ecto,
     name: "RethinkDB.Ecto",
     version: @version,
     elixir: "~> 1.4",
     package: package(),
     description: description(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     docs: docs(),
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Mario Flach"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/almightycouch/rethinkdb_ecto"}]
  end

  defp description do
    "RethinkDB adapter for Ecto"
  end

  defp docs do
    [extras: ["README.md"],
      main: "readme",
      source_ref: "v#{@version}",
      source_url: "https://github.com/almightycouch/rethinkdb_ecto"]
  end

  defp deps do
    [{:ecto, "2.1.6"},
     {:rethinkdb, github: "livecirrus/rethinkdb-elixir", ref: "5c6d5f25ddc93dd4c332eb009d5c914e2c42ee3a"},
     {:ex_doc, "~> 0.15", only: :dev, runtime: false}]
  end
end
