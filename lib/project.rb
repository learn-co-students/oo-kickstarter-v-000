class Project
  def initialize(title)
    @title = title
    @backers = []
  end

  attr_accessor :title, :backers

  def add_backer(backer)
    self.backers << backer
    backer.back_project(self) unless backer.backed_projects.include? self
  end
end
