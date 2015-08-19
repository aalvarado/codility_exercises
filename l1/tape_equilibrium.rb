def solution(a)
  head = a.first
  tail = a[1..-1].reduce(0, :+)
  result = (head - tail).abs

  return result if a.size <= 2

  1.upto(a.size - 1) do |e|
    e = a[e]
    partial = (head - tail).abs
    if partial < result
      result = partial
    end
    head += e
    tail -= e
  end

  result
end
