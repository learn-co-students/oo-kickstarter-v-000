class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    return @backers if @backers.include?(backer) else @backers << backer
    backer.back_project(self)
  end
end