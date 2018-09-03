class Project

  attr_accessor :title, :backers#so that projects can be added to a backer's list and so that the backer can report on the projects they back.

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)#accepts a Backer as an argument and stores it in a backers array
    @backers << backer
    backer.backed_projects << self#also adds the project to th backer's backed_projects array
# saIs backed_projects array being called on backer argument then added to the instance of the class project class?
  end


#class Project
  #attr_accessor :title, :backers

  #def initialize(title)
  #  @title = title
  #  @backers = []
  #end

  #def add_backer(backer)
  #  @backers << backer
  #  backer.backed_projects << self
  #end
#end


end
