require 'pry'

# create class Project 
class Project
  attr_accessor :title, :backers 
 
  # create initialize method w/argument (name)
  def initialize(title)
    @title = title
    @backers = []
  end
# # create add_backer method w/argument (Backer)
  # w/argument (Project)
  def add_backer(backer_name)
    @backers << backer_name
  end 
end