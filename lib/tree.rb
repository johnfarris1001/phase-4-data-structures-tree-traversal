class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(id)
    result = nil
    nodes_to_visit = [@root]

    while nodes_to_visit.length > 0
      node = nodes_to_visit.shift
      if node[:id] == id
        result = node
      end
      nodes_to_visit = nodes_to_visit + node[:children]
    end
    result
  end
end

