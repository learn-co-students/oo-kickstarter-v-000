class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
 #also adds the project to the backer's backed_projects array
 #self here is the instance of the project class. we add this instancce of the project to the backers(sponsors) list of sponsored projects
 #simplified. we add this project to the backers list of projects
  end

end
