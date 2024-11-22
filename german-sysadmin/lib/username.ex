defmodule Username do
  def sanitize(username) do
      Enum.flat_map(username, fn charlist ->
        case charlist do
          elem when elem in ?a..?z -> [elem]
          ?_ -> [?_]
          ?ä -> ~c"ae"
          ?ö -> ~c"oe"
          ?ü -> ~c"ue"
          ?ß -> ~c"ss"
          _ -> []
        end
      end)
  end
end
