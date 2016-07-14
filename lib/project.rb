# Project class
class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(name)
    backers << name
    name.backed_projects << self unless name.backed_projects.include?(self)
  end
end
