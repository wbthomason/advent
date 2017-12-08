import re
from collections import namedtuple, defaultdict

Instruction = namedtuple('Instruction', 'reg op val c_reg c_op c_val')
instr_re = re.compile(r'(?P<reg>\w+) (?P<inst>inc|dec) (?P<amt>-?\d+) if (?P<cond>[a-z]+ [<!=>]+ -?\d+)')


def parse(line):
  reg, inst, amt, cond = instr_re.match(line).groups()
  operand, operator, val = cond.split()
  return Instruction(reg, 1 if inst == 'inc' else -1, int(amt), operand, operator, int(val))


def interpret(instrs):
  regs = defaultdict(lambda: 0)
  max_val = 0
  for instr in instrs:
    if eval(f'{regs[instr.c_reg]} {instr.c_op} {instr.c_val}'):
      regs[instr.reg] += instr.op * instr.val
      if regs[instr.reg] > max_val:
        max_val = regs[instr.reg]

  return regs, max_val


def solve(instrs):
  regs, max_val = interpret([parse(line) for line in instrs.splitlines()])
  return max(regs.values()), max_val
