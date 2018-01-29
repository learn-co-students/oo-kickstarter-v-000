class Project
  attr_accessor :title, :backers


  def initialize(title)
    self.title = title
    self.backers = []
  end

  def add_backer(backer)
    self.backers.push(backer) unless self.backers.include?(backer)
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end
