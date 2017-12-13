from collections import defaultdict


def solve(wall):
  layers = [l.split(': ') for l in wall]
  layers = defaultdict(int, {int(l[0]): int(l[1]) for l in layers})
  severity = sum([k * layers[k] for k in layers if k % (2 * (layers[k] - 1)) == 0])
  d = 0
  caught = True
  while caught:
    d += 1
    caught = sum([1 for k in layers if (k + d) % (2 * (layers[k] - 1)) == 0]) > 0

  return severity, d
