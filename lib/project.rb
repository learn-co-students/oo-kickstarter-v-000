class Project
  attr_reader :title
  @@backers = []

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    @@backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

  def backers
    @@backers
  end

end
