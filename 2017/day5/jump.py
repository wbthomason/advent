'''Day 5 part 1'''


def solve(jumps):
  '''Solve the thing'''
  steps = 0
  index = 0
  while index < len(jumps):
    j = jumps[index]
    steps += 1
    jumps[index] += 1
    index += j
  return steps
