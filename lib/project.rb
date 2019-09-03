require 'pry'

class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
#   When a Backer instance is initialized, it should be initialized with a @backed_projects variable set to an empty array. Instances of the Backer class should have an attr_accessor for backed projects so that projects can be added to a backer's list and so that the backer can report on the projects they back.
# When a Project instance is initialized, it should be initialized with a @backers variable set to an empty array. Instances of the Project class should have an attr_accessor for backers so that projects can add backers to their list of backers and report on the backers who support them.
# When a backer has added a project to its list of backed projects, that project should also add the backer to its list of backers. Refer back to the Code Along about Collaborating Objects.
end
