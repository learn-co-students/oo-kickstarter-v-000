class Project
   
   attr_accessor :backers, :title
   
    def initialize(title)
        @title = title
        @backers = []
    end
    
    def all_backers
       self.backers 
    end
    
    def add_backer(backer)
        self.all_backers << backer
        backer.backed_projects << self
    end
    
end