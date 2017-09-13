class Project

  attr_accessor :title, :backers, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backer = backer
    @backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end
