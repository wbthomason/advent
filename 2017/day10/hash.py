from functools import reduce


def do_hash(digits, lengths, pos, skip, nums):
  for length in lengths:
    if length <= len(nums):
      nums = nums[pos:] + nums[:pos]
      nums[:length] = reversed(nums[:length])
      nums = nums[-pos:] + nums[:-pos]
      pos = (pos + length + skip) % digits
      skip += 1
  return nums, pos, skip


def solve(digits, lengths):
  nums, _, _ = do_hash(digits, lengths, 0, 0, list(range(digits)))
  prod = nums[0] * nums[1]
  lengths = ','.join([str(c) for c in lengths])
  lengths = [ord(f'{l}') for l in lengths] + [17, 31, 73, 47, 23]
  pos, skip, nums = 0, 0, list(range(digits))
  for _ in range(64):
    nums, pos, skip = do_hash(digits, lengths, pos, skip, nums)

  dense = []
  for i in range(0, digits, 16):
    dense.append(reduce(lambda a, x: a ^ x, nums[i:i + 16]))

  return prod, ''.join([f'{h:02x}' for h in dense])
