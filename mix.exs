defmodule ScrivenerList.Mixfile do
  use Mix.Project

  def project do
    [
     app: :scrivener_list,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     deps: deps,
     docs: [
       main: Scrivener.List,
       readme: "README.md"
     ]
    ]
  end


  def application do
    [applications: [:logger]]
  end


  defp deps do
    [
     # {:scrivener, "~> 1.0"},
     # {:scrivener, path: "../scrivener"},
     {:scrivener, github: "stephenmoloney/scrivener", branch: "expose-defaults"},
     {:og, "~> 0.0", only: :dev},
     {:earmark, "~> 0.1", only: :dev},
     {:ex_doc, "~> 0.11", only: :dev}
    ]
  end


  defp description do
    ~S"""
    A [scrivener](https://github.com/drewolson/scrivener) compatible extension that allows pagination of a list.
    """
  end


  defp package do
    [
      maintainers: ["Stephen Moloney"],
      licenses: ["MIT"],
      links: %{"github" => "https://github.com/stephenmoloney/scrivener_list"},
      files: [
        "lib/scrivener_list.ex",
        "lib/scrivener_list",
        "mix.exs",
        "README.md"
      ]
    ]
  end


end
