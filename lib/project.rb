class Project

  attr_accessor :backers, :title
  #takes in a list of backers and reads them
  #writer and reader for title of Project

  def initialize(title) #upon a new Project, takes in a title
    @title=title
    @backers=[]
  end

def add_backer(backer) #adds a backer to the project
  @backers << backer   #takes in a backer as an argument, and adds it to the array of backers
  backer.backed_projects <<  self        #adds the project (self) to the backers backed_projects array
end

end
