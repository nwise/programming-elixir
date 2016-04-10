defmodule Sum do
  def values(dict) do
    dict |> Dict.values |> Enum.sum
  end
end

# hd = [ one: 1, two: 2, three: 3] |> Enum.into HashDict.new
# IO.puts Sum.values(hd)

# map = %{ four: 4, five: 5, six: 6 }
# IO.puts Sum.values(map)

# kw_list = [ name: "Nate", likes: "Programming", where: "Cleveland"]
# hashdict = Enum.into kw_list, HashDict.new
# map = Enum.into kw_list, Map.new

#hashdict = Dict.drop(hashdict, [:where, :likes])
#hashdict = Dict.put(hashdict, :also_likes, "Ruby")
#combo = Dict.merge(map, hashdict)
#kw_list = [ name: "Nate", likes: "Programming", where: "Cleveland", likes: "Elixir"]

#Keyword.get_values(kw_list, :likes)

