# Author: Xiaoyong Guo

import random
import string
from anytree import Node, RenderTree, AsciiStyle, PreOrderIter
from anytree.exporter import DotExporter
from invoke import run


def yes_gen_exp(node):
  if node.depth == 3:
    return []
  e = random.choices(string.hexdigits, k=4)
  e = ''.join(e)
  lname = "l_%s_%s" % (node.depth, e)
  rname = "r_%s_%s" % (node.depth, e)
  left = Node(lname, parent=node, depth=node.depth+1)
  right = Node(rname, parent=node, depth=node.depth+1)
  return (left, right)


def no_gen_exp(node):
  return []


seq = [yes_gen_exp, no_gen_exp]


def gen_tree(node):
  proc = random.choice(seq)
  for n in proc(node):
    gen_tree(n)


root = Node('root', depth=0)
gen_tree(root)
DotExporter(root).to_dotfile('tree.dot')
run('dot -T png -o tree.png tree.dot')
