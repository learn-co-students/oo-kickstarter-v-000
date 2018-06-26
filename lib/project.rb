class Project
  attr_accessor :title, :backer, :backers
  def initialize(name)
    @title=  name
    @backers= []
  end
  def add_backer(backer)
    @backers << backer
#    backer.back_project(self)  this create a loop dont use it.
     backer.backed_projects << self
  end
end
