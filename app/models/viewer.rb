class Viewer
  attr_accessor :id

  def self.guest
    v = Viewer.new
    v.id = 'guest'
    v
  end

  def collections
    Collection.all
  end
end
