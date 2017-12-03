'''Solve part 1 for day 3'''

from math import floor, sqrt


def solve(cell):
  '''Solve the problem'''
  # Based on the polynomial from https://en.wikipedia.org/wiki/Ulam_spiral, compute the cycle
  # number, sector, and offset from the first element of the cycle for the cell
  c = floor((sqrt(cell - 1) + 1) / 2)
  s = floor(4 * (cell - ((2 * c - 1) ** 2 + 1)) / (8 * c))
  o = cell - (2 * c - 1) ** 2 - s * (8 * c) // 4 
  # Translate from sector and cycle to grid coords
  if s == 0:
    x = -c
    y = -c + o
  elif s == 1:
    x = -c + o
    y = c
  elif s == 2:
    x = c
    y = c - o
  else:
    x = c - o
    y = -c

  print(c, s, o)
  return abs(x) + abs(y)
