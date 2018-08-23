class Project
  attr_accessor :title
  attr_reader :backers

  #it creates a new instance of Project with a title argument and an empty
  #@backers array
  def initialize(title)
    @title = title
    @backers = []
  end

  #it accepts an argument of a specific instance of Backer and adds this project
  #to that backers array of backed project if they're not already backing
  #the project, and then adds the backer to the project's @backers array
  def add_backer(backer)
    if !self.backers.include?(backer)
      self.backers << backer
      backer.back_project(self)
    end
  end
end
