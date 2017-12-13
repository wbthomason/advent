import re
from functools import reduce

progs = re.compile(r'(?P<name>\d+) <-> (?P<neighbors>(?:\d+(?:, )?)+)')


def solve(maps):
  maps = [progs.match(m).groupdict() for m in maps]
  maps = {
      int(g['name']): set([int(n) for n in g['neighbors'].split(', ')]) | {int(g['name'])}
      for g in maps
  }
  for k in maps:
    [maps[n].update(maps[k]) for n in maps[k]]
    maps[k].update(*[maps[n] for n in maps[k]])

  count = 0
  unique = []
  for k in maps:
    new = reduce(lambda a, m: a and maps[k] != m, unique, True)
    count += 1 if new else 0
    if new:
      unique.append(maps[k])

  return len(maps[0]), count
