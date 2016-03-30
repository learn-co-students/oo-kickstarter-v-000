class Project
  
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(person)
    backers << person
    person.back_project(self) unless person.backed_projects.include?(self)
  end


end