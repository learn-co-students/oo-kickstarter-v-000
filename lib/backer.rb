class Backer
attr_accessor :name, :backed_projects
@@all = []

def initialize(name)
  @name = name
  @backed_projects = []
  @@all<<self
end

def back_project(project)
  searched_project = Project.find_project(project)
  searched_project.backers<<self
  @backed_projects<<searched_project
end

def self.find_backer(var_name)
  searched_backer = @@all.detect {|x| x == var_name}
end

end