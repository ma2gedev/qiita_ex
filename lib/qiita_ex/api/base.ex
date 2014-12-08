defmodule QiitaEx.API.Base do
   @moduledoc """
  Provides basic and common functionalities for Qiita API.
  """

  use HTTPoison.Base

  def process_url(url) do
    "https://qiita.com/api/v2/" <> url
  end

  def process_response_body(body) do
    JSX.decode! body
  end
end
