require 'pp'

class BTree

  RIGHT = 'right'
  LEFT = 'left'

  attr_accessor :value
  attr_accessor :parent
  attr_accessor :left
  attr_accessor :right

  def initialize(value = nil, parent = nil, left = nil, right = nil)
    @parent = parent
    @value = value
    @left = left
    @right = right
  end

  def insert(object, direction)
    object = BTree.new(object) unless object.class == BTree
    object.parent = self
    if send("#{direction}")
      send("#{direction}").insert(object, direction)
    else
      send("#{direction}=", object)
    end
  end
end

tree = BTree.new(1)

tree.insert(2, BTree::LEFT)
tree.insert(3, BTree::RIGHT)
tree.insert(4, BTree::RIGHT)
tree.insert(5, BTree::LEFT)

pp tree
