defmodule MyList do
  # calculate the length of the list
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  # square each element of the list
  def square([]),             do: []
  def square([ head | tail ]), do: [ head*head | square(tail) ]

  # Add one to each element of the list
  def add_l([]), do: []
  def add_l([ head | tail ]), do: [ head+1 | add_l(tail) ]

  # pass each element to a function
  # ex. MyList.map [1,2,3,4], &(&1*&1)
  def map([], _func), do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  # Using private and underscore methods to 'hide' the need to initialize with 0
  def sum(list), do: _sum(list, 0)
  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head+total)

  # Same as #sum without accumulator
  def sum1([]), do: 0
  def sum1([head | tail]), do: head + sum1(tail)
end
