class Project
  attr_accessor :title, :backers

  def initialize(title)
    self.title = title
    @backers = []
  end

  def add_backer(backer)
    self.backers << backer
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end
