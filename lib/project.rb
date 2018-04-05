class Project
  attr_accessor :title
  attr_reader :backers

  def initialize (title)
    @title = title
    @backers = []
  end

  def add_backer (backer)
    @backers.index(backer) || @backers << backer
    backer.add_project(self)
  end

end
