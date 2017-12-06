def solve1(passphrases):
  count = 0
  for line in passphrases.splitlines():
    words = line.split() 
    ws = set()
    valid = True
    for word in words:
      if word in ws:
        valid = False
        break
      
      ws.add(word)
    
    if valid:
      count += 1

  return count


def solve2(passphrases):
  count = 0
  for line in passphrases.splitlines():
    words = line.split() 
    ws = set()
    valid = True
    for word in words:
      sword = ''.join(sorted(word))
      if sword in ws:
        valid = False
        break
      
      ws.add(sword)
    
    if valid:
      count += 1

  return count
