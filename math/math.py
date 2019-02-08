from itertools import product

for a, b, c in product(range(1, 10), range(10), range(10)):
  num  = a*100 + b*10 +c
  if 13*(a+b+c) == num:
    print(num)
