from math import log, floor


def solve1(code):
  digits = [(code // (10 ** i)) % 10 for i in range(int(floor(log(code) / log(10))), -1, -1)]
  match_sums = [0, 0]
  num_digits = len(digits)
  for i, d in enumerate(digits):
    if d == digits[(i + 1) % num_digits]:
      match_sums[0] += d
    if d == digits[(i + num_digits // 2) % num_digits]:
      match_sums[1] += d

  return match_sums
