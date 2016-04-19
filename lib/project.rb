require 'pry'

class Project

attr_accessor :backers, :title

def initialize(title)
  @title = title
  @backers = []
end

def add_backer(backer)
@backers << backer
backer.backed_projects << self

end



end

#add_backer also needs to add the project to the backers backed projects array