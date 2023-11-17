defmodule GuidePost.Shortcut.Client do
  @moduledoc """
  Defines an explicit contract for Shortcut clients.
  """

  @callback get_epics() :: [map()]
end
