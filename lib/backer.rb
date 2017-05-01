class Backer
#--------------------------------------------------------------------------------
#variables & macros
attr_accessor :name, :backed_projects


#--------------------------------------------------------------------------------
#class methods





#--------------------------------------------------------------------------------
#instance methods
def initialize (name)
@name = name
@backed_projects = []
end

def back_project(project)
if !@backed_projects.include?(project)
@backed_projects << project
project.backers << self
end

#reciprocally adds backer to project after it adds project to backer
#project.add_backer(self)
end



end
