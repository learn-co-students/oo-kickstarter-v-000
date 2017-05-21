class Project
  attr_accessor :title, :backers
  def initialize(title)
    @title = title
    @backers = []
  end
  def add_backer(backer)
    raise TypeError if !backer.is_a?(Backer)
    if !@backers.include?(backer)
      @backers << backer
      backer.back_project(self)
    end
  end
end
