defmodule QiitaEx.API.Tags do
  @moduledoc """
  Provides tags API interfaces.
  """

  import QiitaEx.API.Base

  def list_tags(access_token, params \\ %{}, headers \\ %{}) do
    get(access_token, "tags", params, headers)
  end

  def get_tag(access_token, tag_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "tags/#{tag_id}", params, headers)
  end

  def list_user_following_tags(access_token, user_id, params \\ %{}, headers \\ %{}) do
    get(access_token, "users/#{user_id}/following_tags", params, headers)
  end
end
