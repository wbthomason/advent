def solve1(table):
  rows = [[int(val) for val in line.split()] for line in table.splitlines()]
  return sum([max(row) - min(row) for row in rows])


def solve2(table):
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
