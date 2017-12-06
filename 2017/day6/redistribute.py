import numpy as np


def communism(banks):
  i = np.argmax(banks)
  blocks = banks[i]
  banks[i] = 0
  while blocks > 0:
    i += 1
    banks[i % len(banks)] += 1
    blocks -= 1

  return banks


def solve(banks):
  '''Does both parts'''
  memory = [int(v) for v in banks.split()]
  configurations = {tuple(memory): 0}
  memory = communism(memory)
  reconfigs = 1
  ind = 1
  while tuple(memory) not in configurations:
    configurations[(tuple(memory))] = ind
    reconfigs += 1
    ind += 1
    memory = communism(memory)

  return reconfigs, (ind - configurations[tuple(memory)])
