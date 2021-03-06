#!/usr/bin/env python
# -*- coding: utf-8 -*-
num = int(raw_input())
input = []
track = []
visited = []
for i in range(num):
	input.append(map(int, raw_input().split()))
	visited.append(False)

def dfs(index, num, input):
	q = []
	q.append(index)
	while len(q) != 0:
		index = q.pop()
		for i in range(num):
			if i != index and (input[index][0] == input[i][0] or input[index][1] == input[i][1]) and visited[i] == False:
				q.append(i)
		visited[index] = True

res = 0
for i in range(num):
	if visited[i] == False:
		dfs(i, num, input)
		res += 1
		
print res - 1