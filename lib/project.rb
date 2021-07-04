class Project
  attr_reader :title
  attr_accessor :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer_instance)
    self.backers << backer_instance
    backer_instance.backed_projects << self
  end
end
