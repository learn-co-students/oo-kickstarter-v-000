class Project
  attr_accessor :title, :backers

    def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer # passing in an instance of the Backer class as an argument and << it to the @backers []
    backer.backed_projects << self # adds the project(self) to the backer's backed_projects [] via the attr_accessor
  end

end
