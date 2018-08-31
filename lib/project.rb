class Project

attr_accessor :backers#so that projects can be added to a backer's list and so that the backer can report on the projects they back.

def initialize
  @backers = []
end
