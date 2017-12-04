'''Part 1 of day 4'''


def solve(passphrases):
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
