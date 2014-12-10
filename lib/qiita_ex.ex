defmodule QiitaEx do
  @moduledoc """
  Qiita API v2 Interface.
  """

  defmodule Response do
    defstruct status_code: nil, body: nil, headers: %{}
  end
end
