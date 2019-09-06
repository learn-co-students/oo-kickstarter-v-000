#note: Kickstarter is a website that random people support your project

class Project
 attr_accessor :title, :backers

  def initialize(title)
     @title = title
     @backers =[]
  end

  def add_backer(backers)
    #stores project in a back_project array
     @backers << backers
     backers.backed_projects << self  # this is refering to the project in the project class in which
         # the backeres attribute or @backers is located.
  end
end
