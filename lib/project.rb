#require_relative "backer.rb"

class Project
  attr_accessor :title
  attr_accessor :backers
  def initialize(title="")
    @backers = []
    @title = title
  end
  def add_backer(backer)
    if !@backers.include?(backer)
      @backers << backer
      backer.back_project(self)
    end
    #puts @backers
  end
  def backers
    @backers
  end
end
