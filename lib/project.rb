class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    # Adds the "Backer" Object to the backers array of a particular instance of the Project
    self.backers << backer
    # Using the back_project method of Class Backer, adds this instance of project to the array of backed_projects ...
    # for the particular instance of the Class Backer itself
    # The check is necessary to prevent unnecessary circular reference that would arise from the similar ...
    # method being implemented in Class Backer 
    backer.back_project(self) unless backer.backed_projects.include?(self)
  end
end
