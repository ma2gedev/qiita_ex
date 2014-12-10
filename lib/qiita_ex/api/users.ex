defmodule QiitaEx.API.Users do
  @moduledoc """
  Provides users API interfaces.
  """

  import QiitaEx.API.Base

  def list_users(access_token, params \\ [], headers \\ []) do
    get(access_token, "users", params, headers)
  end

  def get_user(access_token, user_id, params \\ [], headers \\ []) do
    get(access_token, "users/#{user_id}", params, headers)
  end

  def get_authenticated_user(access_token, params \\ [], headers \\ []) do
    get(access_token, "authenticated_user", params, headers)
  end

  def list_user_followees(access_token, user_id, params \\ [], headers \\ []) do
    get(access_token, "users/#{user_id}/followees", params, headers)
  end

  def list_user_followers(access_token, user_id, params \\ [], headers \\ []) do
    get(access_token, "users/#{user_id}/followers", params, headers)
  end

  def list_item_stockers(access_token, item_id, params \\ [], headers \\ []) do
    get(access_token, "items/#{item_id}/stockers", params, headers)
  end
end
