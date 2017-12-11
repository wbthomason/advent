import re

trash = re.compile(r'<.*?>')
cancel = re.compile(r'!.')


def solve(strm):
  strm = cancel.sub('', strm)
  orig = len(strm)
  strm = trash.sub('<>', strm)
  rem = len(strm)
  levels = [1]
  score = 0
  for i, c in enumerate(strm):
    if c == '{':
      score += levels[-1]
      levels.append(levels[-1] + 1)
    elif c == '}':
      levels.pop()
  return score, orig - rem
