class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title = nil)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects.push(self)
  end
  
end