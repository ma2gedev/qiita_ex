defmodule QiitaEx.API.Base do
   @moduledoc """
  Provides basic and common functionalities for Qiita API.
  """

  alias QiitaEx.Response

  @doc """
  Send API request, then return QiitaEx.Response
  """
  def request(access_token, method, path, params \\ %{}, headers \\ %{}) do
    headers = headers |> Map.put("Content-Type", "application/json") |> Map.put("User-Agent", user_agent)
    if access_token, do: headers = headers |> Map.put("Authorization", "Bearer #{access_token}")
    url = if method == :get do
      process_url(path) <> URI.encode_query(params)
    else
      process_url(path)
    end
    body = if method == :get do
      ""
    else
      if Enum.empty?(params) do
        ""
      else
        JSX.encode!(params)
      end
    end
    HTTPoison.request!(method, url, body, headers)
    |> response
  end

  def get(access_token, path, params \\ %{}, headers \\ %{}) do
    request(access_token, :get, path, params, headers)
  end

  def post(access_token, path, params \\ %{}, headers \\ %{}) do
    request(access_token, :post, path, params, headers)
  end

  def patch(access_token, path, params \\ %{}, headers \\ %{}) do
    request(access_token, :patch, path, params, headers)
  end

  def put(access_token, path, params \\ %{}, headers \\ %{}) do
    request(access_token, :put, path, params, headers)
  end

  def delete(access_token, path, params \\ %{}, headers \\ %{}) do
    request(access_token, :delete, path, params, headers)
  end

  defp process_url(url) do
    "#{Application.get_env(:qiita_ex, :uri_scheme)}://#{Application.get_env(:qiita_ex, :host)}/api/v2/#{url}"
  end

  defp response(response) do
    body = case response.body do
      "" -> nil
      _  -> JSX.decode!(response.body)
    end
    %Response {
      status_code: response.status_code,
      headers: response.headers,
      body: body
    }
  end

  defp user_agent do
    'QiitaEx/#{QiitaEx.version} (Elixir/#{System.version})'
  end
end
