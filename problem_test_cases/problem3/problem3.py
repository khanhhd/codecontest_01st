

n = int(raw_input())
a = map(int, raw_input().split())
if n == 2:
	print "YES"
else:
	count = 0 
	x = sorted(a)
	for i in range(n):
		if x[i] != a[i]:
			count += 1
		if count >= 3:
			print "NO"
			exit(0)
	print "YES"
		