def solution(n)
  z_counter = 0
  gap_start = false
  gap_end = false
  remainder = 0
  gap = 0

  while n > 0 do
    remainder = n % 2
    n = n / 2

    if [
      remainder == 0,
      gap_start == true
    ].all?
      z_counter += 1
    end

    if [
      remainder == 1,
      gap_start == false
    ].all?
      gap_start = true
      next
    end

    if [
      remainder == 1,
      gap_start == true,
      gap_end == false
    ].all?
      gap_end = true
    end

    if [
      remainder == 1,
      gap_start == true,
      gap_end == true
    ].all?
      gap = z_counter if z_counter > gap
      z_counter = 0
    end
  end

  gap
end
