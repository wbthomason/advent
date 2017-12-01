'''Solve day 1 of AoC 2017, part 1'''
from math import log, floor
import sys


def solve(code):
  '''Do the thing'''
  digits = [(code // (10 ** i)) % 10 for i in range(int(floor(log(code) / log(10))), -1, -1)]
  match_sum = 0
  for i, d in enumerate(digits):
    if d == digits[(i + 1) % len(digits)]:
      match_sum += d

  print(match_sum)


if __name__ == '__main__':
  solve(int(sys.argv[1]))
