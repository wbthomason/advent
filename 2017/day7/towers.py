import re
from collections import namedtuple

Node = namedtuple('Node', 'name weight children')
prog_spec = re.compile(
    r'(?P<name>[a-z]+) \((?P<weight>[0-9]+)\)(?: -> (?P<children>(?:[a-z]+(?:, )?)+))?')


def parse(data):
  lines = data.splitlines()
  matches = [prog_spec.match(line) for line in lines]
  nodes = {}
  for match in matches:
    if not match:
      print('Error: Parsing failed!')
      break

    name, weight, children = match.groups()
    if children:
      children = children.split(', ')

    nodes[name] = (name, weight, children)

  return nodes


# This could be way less hacky/messy
def make_tree(progs):
  nodes = {}
  done = set()

  def build_subtree(prog, nodes):
    children = []
    if prog[2]:
      for childname in prog[2]:
        if childname in nodes:
          children.append(nodes[childname])
        else:
          child = progs[childname]
          children.append(build_subtree(child, nodes))

        del nodes[childname]

    nodes[prog[0]] = Node(prog[0], int(prog[1]), children)
    done.add(prog[0])
    return nodes[prog[0]]

  for progname in progs:
    if progname not in done:
      prog = progs[progname]
      nodes[progname] = build_subtree(prog, nodes)

  return list(nodes.values())[0]


def find_imbalance(tree):
  subtree_weights = []
  for child in tree.children:
    imb, weight = find_imbalance(child)
    if imb:
      return imb, weight

    subtree_weights.append(weight)

  nc = len(subtree_weights)
  for i, weight in enumerate(subtree_weights):
    if weight != subtree_weights[(i + 1) % nc] and weight != subtree_weights[(i + 2) % nc]:
      new_weight = subtree_weights[(i + 1) % nc] - weight + tree.children[i].weight
      return True, new_weight

  return False, sum(subtree_weights) + tree.weight


def solve1(data):
  progs = parse(data)
  tree = make_tree(progs)
  return tree.name


def solve2(data):
  progs = parse(data)
  tree = make_tree(progs)
  return find_imbalance(tree)[1]
