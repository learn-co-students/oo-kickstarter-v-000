class Project
attr_accessor :title, :backers 

def initialize(title)
  @title = title
  @backers = []
end# of initialize 

def add_backer(backer)
  @backers << backer 
  backer.backed_projects << self 
end# of add_backer


end# of class