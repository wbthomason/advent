def solve(steps):
  deltas = {
      'n': (0, -1),
      'ne': (1, -1),
      'se': (1, 0),
      's': (0, 1),
      'sw': (-1, 1),
      'nw': (-1, 0)
  }
  x, y = 0, 0
  maxdist = 0
  for step in steps.split(','):
    dx, dy = deltas[step]
    x += dx
    y += dy
    maxdist = max(maxdist, abs(x), abs(y))

  return max(abs(x), abs(y)), maxdist
