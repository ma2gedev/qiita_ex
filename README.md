# QiitaEx - Qiita API v2 Interface for Elixir

## :warning: This library is no longer maintained :warning:

## Installation

Add `:qiita_ex` library to your project's dependencies in `mix.exs` and also add in `application` function:

```elixir
def application do
  [applications: [:logger, :qiita_ex]]
end

defp deps do
  [
    {:qiita_ex, "~> 0.0.1"}
  ]
end
```

And fetch:

```
$ mix deps.get
```

## Usage

Go to https://qiita.com/settings/tokens/new and get your token.

```
iex -S mix
iex> response = QiitaEx.API.Users.get_user("<YOUR_ACCESS_TOKEN>", "ma2ge")
iex> response.status_code
iex> response.headers
iex> response.body
```

## License

Copyright © 2014 Takayuki Matsubara, released under the MIT license.

