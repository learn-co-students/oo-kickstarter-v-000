class Project
  attr_accessor :title, :backers

  def initialize(name)
    @title=name
    @backers=[]
  end

  def add_backer(backer)
    @backers<<backer
   if (!(backer.backed_projects.include?(self)))
       backer.backed_projects<<self
  end
end




end
