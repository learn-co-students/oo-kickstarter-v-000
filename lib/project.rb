class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(steven)
   self.backers << steven
   steven.backed_projects << self
  end

end
