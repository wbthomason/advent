'''Day 5 part 2'''


def solve(jumps):
  '''Solve the thing'''
  steps = 0
  index = 0
  while index < len(jumps):
    j = jumps[index]
    steps += 1
    jumps[index] += 1 if jumps[index] < 3 else -1
    index += j
  return steps
