defmodule QiitaEx do
  @moduledoc """
  Qiita API v2 Interface.
  """

  defmodule Response do
    defstruct status_code: nil, body: nil, headers: %{}
  end

  def version do
    Mix.Project.config[:version]
  end
end
