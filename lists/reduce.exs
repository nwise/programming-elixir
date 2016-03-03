defmodule MyList do
  # This can be used to build #sum
  def reduce([], value, _) do
    value
  end
  def reduce([head | tail], value, func) do
    reduce(tail, func.(head, value), func)
  end

  # Exercise: ListsAndRecursion 1
  # applies the function to each element and then sums the result
  # ex. MyList,mapsum [1,2,3], &(&1*&1)  ==> [1,4,9] ==> 14
  def mapsum([], _func), do: 0
  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  # Exercise: ListsAndRecursion 2
  # returns the element with the maximum value in the list
  def max_l([x]), do: x
  def max_l([head | tail]) do
    if head > max_l(tail) do
      head
    else
      max_l(tail)
    end
  end

  # Excercise: ListsAndRecursion 3
  # Accept a single-quoted string and apply the Ceasar Cipher
  def ceasar([], _n), do: []
  def ceasar([head | tail], n) do
    if (head + n) > 122 do
      [((head + n) - 26) | ceasar(tail, n)]
    else
      [(head + n) | ceasar(tail, n)]
    end
  end
end
