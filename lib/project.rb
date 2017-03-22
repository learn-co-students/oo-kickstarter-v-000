class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
    #alternative solution with condition to avoid infinite loop
    #backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end
