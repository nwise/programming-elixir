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

  # This can be used to build #sum
  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  # applies the function to each element and then sums the result
  # ex. MyList,mapsum [1,2,3], &(&1*&1)  ==> [1,4,9] ==> 14
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  # returns the element with the maximum value in th list
  def max_l([]) do
    0
  end
  def max_l([head | tail]) do
    if head > max_l(tail) do
      head
    else
      max_l(tail)
    end
  end
end
