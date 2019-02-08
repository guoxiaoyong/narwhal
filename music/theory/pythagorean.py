import sys
from fractions import Fraction

def get_ratio(n):
  pf = Fraction(3, 2)
  ratio = pf**n
  while ratio > 2:
    ratio = ratio  / 2
  return ratio


def main(argv):
  min_range = int(argv[1])
  max_range = int(argv[2])
  ratios = []
  for n in range(min_range, max_range):
    ratios.append('%.4f' % float(get_ratio(n)))
  ratios.sort()
  print(ratios)


main(sys.argv)
