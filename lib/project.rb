#Project - ::new takes a title on initialization
     #Failure/Error: project = Project.new("Project With So Much Amaze")
class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  #1) Project - #add_backer accepts a Backer as an argument and stores it in a backers array
     #Failure/Error: book.add_backer(steven)
  def add_backer(backer)
    backers << backer
    backer.backed_projects << self
  end

  #1) Project - More Advanced #add_backer also adds the project to the backer's backed_projects array
  #  Failure/Error: expect(arel.backed_projects).to include(ropes)



end
