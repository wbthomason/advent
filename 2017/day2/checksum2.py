'''Solve day 2 of AoC 2017, part 2'''
import sys


def solve(table):
  '''Solve the problem'''
  rows = [[int(val) for val in line.split()] for line in table.splitlines()]

  def divisors(row):
    '''Find the two divisors in the row'''
    for i, v in enumerate(row):
      for j in row[i + 1:]:
        n = max(v, j)
        d = min(v, j)
        if n % d == 0:
          return n / d

  return sum([divisors(row) for row in rows])


if __name__ == '__main__':
  solve(sys.argv[1])
