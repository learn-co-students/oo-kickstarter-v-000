class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    if @backers.include?(backer)
      @backers
    else
      backer.back_project(self)
      @backers << backer
    end
  end
end