class Project
#--------------------------------------------------------------------------------
#variables & macros
attr_accessor :title, :backers


#--------------------------------------------------------------------------------
#class



#--------------------------------------------------------------------------------
#instance
def initialize (title)
@title = title
@backers = []
end


def add_backer(backer)
if !backers.include?(backer)
@backers << backer
end

#reciprocally adds to opposing object
backer.back_project(self) unless backer.backed_projects.include?(self)
end
end

