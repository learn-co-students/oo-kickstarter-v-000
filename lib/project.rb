class Project
  attr_accessor :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backer=(backer)
    @backer = backer
    backer.back_project(self)
  end
end
