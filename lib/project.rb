
class Project
  attr_accessor :backers, :title
  
  def initialize(title)
    self.title = title
    self.backers = []
  end
  
  def add_backer(person)
    self.backers << person unless self.backers.include?(person)
    person.back_project(self) unless person.backed_projects.include?(self)
  end
  
end