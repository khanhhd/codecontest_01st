users = []
total = 0

try:
	while True:
		a = raw_input()
		if a == '':
			break;
		if a[0] == '+':
			users.append(a[1:])
		elif a[0] == '-':
			users.remove(a[1:])
		else:
			total += len(users) * len(a[a.index(':')+1:])
except:
	pass

print total