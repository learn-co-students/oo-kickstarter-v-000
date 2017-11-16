class Project
  attr_accessor :title,:backers

  def initialize(name)
    @title=name
    @backers=[]
  end

  def add_backer(backer)
    if !@backers.include?(backer)
      @backers<<backer #if !@baskers.include?(basker)
      backer.back_project(self)
    end
  end
end
