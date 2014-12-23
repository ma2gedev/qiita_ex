defmodule QiitaEx.Mixfile do
  use Mix.Project

  def project do
    [app: :qiita_ex,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: "Qiita API v2 Interface for Elixir",
     package: [
       contributors: ["Takayuki Matsubara"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/ma2gedev/qiita_ex"}
     ],
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison],
     env: [host: "qiita.com", uri_scheme: "https"]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:exjsx, "~> 3.0"},
     {:excoveralls, "~> 0.3", only: :dev},
     {:ex_doc, "~> 0.6", only: :dev},
     {:httpoison, "~> 0.5"}]
  end
end
