class Project
attr_reader :backer, :backers, :backed_projects
attr_accessor :title 

def initialize(title)
  @backers = []
  @title = title 
  @backer = backer 
  @backed_projects =  backed_projects
end

def add_backer(backer)
  self.backers << backer 
  backer.back_project(self) unless backer.backed_projects.include?(self) 
end

end