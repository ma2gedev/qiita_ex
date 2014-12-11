defmodule QiitaEx.API.Items do
  @moduledoc """
  Provides items API interfaces.
  """

  import QiitaEx.API.Base

  def list_items(access_token, params \\ %{}, headers \\ %{}) do
    get(access_token, "items", params, headers)
  end

  def create_item(access_token, params \\ %{}, headers \\ %{}) do
    post(access_token, "items", params, headers)
  end

  def get_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "items/#{item_id}", params, headers)
  end

  def update_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    patch(access_token, "items/#{item_id}", params, headers)
  end

  def delete_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    delete(access_token, "items/#{item_id}", params, headers)
  end

  def list_tag_items(access_token, tag_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "tags/#{tag_id}/items", params, headers)
  end

  def list_user_items(access_token, user_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "users/#{user_id}/items", params, headers)
  end

  def list_user_stocks(access_token, user_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "users/#{user_id}/stocks", params, headers)
  end

  def stock_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    put(access_token, "items/#{item_id}/stock", params, headers)
  end

  def unstock_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    delete(access_token, "items/#{item_id}/stock", params, headers)
  end

  def lgtm_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    put(access_token, "items/#{item_id}/lgtm", params, headers)
  end

  def unlgtm_item(access_token, item_id, params \\ %{}, headers \\ %{}) do
    delete(access_token, "items/#{item_id}/lgtm", params, headers)
  end
end
