class Project
  attr_accessor :title, :backers
  def initialize(project_title)
    self.title = project_title
    self.backers = []
  end
  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end
end
