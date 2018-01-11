class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def find_backer(backer_name)
    @backers.find do |backer|
      backer.name == backer_name
    end
  end

  def add_backer(backer)
    if !find_backer(backer.name)
      @backers << backer
      backer.back_project(self)
    end 
  end


end
