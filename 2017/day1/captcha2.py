'''Solve day 1 of AoC 2017, part 2'''
from math import log, floor
import sys


def solve(code):
  '''Do the thing'''
  # Split into digits
  digits = [(code // (10 ** i)) % 10 for i in range(int(floor(log(code) / log(10))), -1, -1)]
  match_sum = 0
  num_digits = len(digits)
  for i, d in enumerate(digits):
    if d == digits[(i + num_digits // 2) % num_digits]:
      match_sum += d

  print(match_sum)


if __name__ == '__main__':
  solve(int(sys.argv[1]))
