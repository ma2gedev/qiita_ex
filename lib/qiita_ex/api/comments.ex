defmodule QiitaEx.API.Comments do
  @moduledoc """
  Provides comments API interfaces.
  """

  import QiitaEx.API.Base

  def get_comment(access_token, comment_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "comments/#{comment_id}", params, headers)
  end

  def delete_comment(access_token, comment_id, params \\ %{}, headers \\ %{}) do
    delete(access_token, "comments/#{comment_id}", params, headers)
  end

  def update_comment(access_token, comment_id, params \\ %{}, headers \\ %{}) do
    patch(access_token, "comments/#{comment_id}", params, headers)
  end

  def list_item_comments(access_token, item_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "items/#{item_id}/comments", params, headers)
  end

  def create_item_comment(access_token, item_id, params \\ %{}, headers \\ %{}) do
    post(access_token, "items/#{item_id}/comments", params, headers)
  end

  def thank_comment(access_token, comment_id, params \\ %{}, headers \\ %{}) do
    put(access_token, "comments/#{comment_id}/thank", params, headers)
  end

  def unthank_comment(access_token, comment_id, params \\ %{}, headers \\ %{}) do
    delete(access_token, "comments/#{comment_id}/thank", params, headers)
  end
end
