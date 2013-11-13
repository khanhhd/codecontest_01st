import math

n = int(raw_input())
max = (n+1)*3*3 - n
result = []
for i in range(int(math.sqrt(n))+1):
	i += 1
	if n%i == 0 and i <= n:
		a = n/i
		for j in range(int(math.sqrt(a))+1):
			j += 1
			if a%j == 0 and j <= a:
				b = a/j
				result.append((i+1)*(j+2)*(b+2) - n)
print min(result), max
		
		
	
