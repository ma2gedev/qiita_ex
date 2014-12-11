# QiitaEx - Qiita API v2 Interface for Elixir

[![hex.pm version](https://img.shields.io/hexpm/v/qiita_ex.svg)](https://hex.pm/packages/qiita_ex) [![hex.pm downloads](https://img.shields.io/hexpm/dt/qiita_ex.svg)](https://hex.pm/packages/qiita_ex)

## Installation

Add `:qiita_ex` library to your project's dependencies in `mix.exs`:

```elixir
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
iex> response = QiitaEx.API.Users.get_user("<YOUR_ACCESS_TOKEN>", "ma2ge")
iex> response.status_code
iex> response.headers
iex> response.body
```

## License

Copyright © 2014 Takayuki Matsubara, released under the MIT license.

