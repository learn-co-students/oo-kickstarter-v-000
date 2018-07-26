class Project   #Projects can HAVE MANY BACKERS. Backers can HAVE MANY Projects. So, it is a "HAS MANY" to "HAS MANY" relationship.
  attr_accessor :title, :backers #need to be able to set & get the title & set/get the backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer) #pass in argument of a backer (person) and store this list of names into a backers array
    @backers << backer #accessible to the Project class to know who its backers are on a specific project instance
    #how do we create the opposite relationship? Need to add this instance of PROJECT! into the Backer's backed_projects array (i.e. so he/she knows all of the project he./she is part of)
    backer.backed_projects << self
    #backer argument is of the backer class so you can call the backer class here and its methods, so you can call backed_project and then shovel in self
    #so, here you are pushing in the instance of self here into the backed_projects instance array within the backer class!
  end
end
