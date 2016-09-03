class Project
  attr_accessor :backers, :title

  def initialize(title)
    self.backers = []
    self.title = title
  end

  def add_backer(backer)
    self.backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end

end
