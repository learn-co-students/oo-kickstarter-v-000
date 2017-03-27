class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self # add self instance to @backed_projects array
  end

  def self.backers # added this method to check contents of @backers array
    @backers
  end
end
