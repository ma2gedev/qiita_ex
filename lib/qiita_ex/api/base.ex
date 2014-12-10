defmodule QiitaEx.API.Base do
   @moduledoc """
  Provides basic and common functionalities for Qiita API.
  """

  alias QiitaEx.Response

  @doc """
  Send API request, then return QiitaEx.Response
  """
  def request(access_token, method, path, params \\ [], headers \\ %{}) do
    if access_token, do: headers = %{ "Authorization" => "Bearer #{access_token}" }
    HTTPoison.request!(method, process_url(path), "", headers, params)
    |> response
  end

  def get(access_token, path, params \\ [], headers \\ %{}) do
    request(access_token, :get, path, params, headers)
  end

  def post(access_token, path, params \\ [], headers \\ %{}) do
    request(access_token, :post, path, params, headers)
  end

  def patch(access_token, path, params \\ [], headers \\ %{}) do
    request(access_token, :patch, path, params, headers)
  end

  def put(access_token, path, params \\ [], headers \\ %{}) do
    request(access_token, :put, path, params, headers)
  end

  def delete(access_token, path, params \\ [], headers \\ %{}) do
    request(access_token, :delete, path, params, headers)
  end

  defp process_url(url) do
    "https://qiita.com/api/v2/" <> url
  end

  defp response(response) do
    %Response {
      status_code: response.status_code,
      headers: response.headers,
      body: JSX.decode! response.body
    }
  end
end
