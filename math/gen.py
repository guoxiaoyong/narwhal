# Author: Xiaoyong Guo

import enum
import random
import string

from anytree import Node, RenderTree, AsciiStyle, PreOrderIter
from anytree.exporter import DotExporter
from invoke import run


class Operator(enum.Enum):
    ADD = '+'
    MINUS = '-'
    MUL = '*'
    DIV = '/'


def rand_number():
  return random.randint(2, 50)


def rand_operator():
  op = Operator(random.choice('+-*/'))
  return op


class ArithExpGenerator(object):
    def __init__(self):
        op = rand_operator()
        root = Node('root', depth=0, is_leaf=False,  value=op)
        Node(lname, parent=root, depth=1)
        Node(rname, parent=root, depth=1)
        self._root = root

    def gen_exp_tree():


def gen_random_id(depth):
  e = random.choices(string.hexdigits, k=4)
  e = ''.join(e)
  lname = "l_%s_%s" % (node.depth, e)
  rname = "r_%s_%s" % (node.depth, e)


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


def root_node():
    op = rand_operator()
    props = {
        'depth': 0,
        'leaf': False,
        'value': op,
    }
    node = Node('root', **props)
    return


def gen_exp_tree(node=None, depth):
    if node is None:
        node = root_node()
        gen_exp_tree(node, depth+1)
    else:
        if not node.leaf:
    return root






gen_tree(root)
DotExporter(root).to_dotfile('tree.dot')
run('dot -T png -o tree.png tree.dot')
