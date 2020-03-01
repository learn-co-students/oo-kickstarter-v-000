class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_obj)
    self.backers << backer_obj
    backer_obj.backed_projects << self
  end
end # => End Project Class
