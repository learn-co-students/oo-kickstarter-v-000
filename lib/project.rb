#create class Project

class Project

#initialize with title, create attr_accessor title

  attr_accessor :title, :backers, :backed_projects


#when initialize with name, also initialize new empty array
  def initialize(title)
    @title = title
    @backers = []
  end

#new instances of backer goes into backers array
#new projects also goes into backed_projects array
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

end
