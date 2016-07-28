class Project
attr_accessor :title, :backers
@@all = []

def initialize(title)
  @title = title
  @backers = []
  @@all << self
end

def self.all
  @@all
end

def self.find_project(var_name)
  searched_project = @@all.detect {|x| x == var_name}
end

def add_backer(backer)
  searched_backer = Backer.find_backer(backer)
  searched_backer.backed_projects<<self
  @backers<<searched_backer
end
#End the class
end
