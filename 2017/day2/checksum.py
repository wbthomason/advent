'''Solve day 2 of AoC 2017, part 1'''
import sys


def solve(table):
  '''Solve the problem'''
  rows = [[int(val) for val in line.split()] for line in table.splitlines()]
  return sum([max(row) - min(row) for row in rows])


if __name__ == '__main__':
  solve(sys.argv[1])
