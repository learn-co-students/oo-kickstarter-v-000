class Project
    attr_accessor :title, :backer
     @@backers = []
    
    def initialize(title)
        @title = title
    end
    def add_backer(backer)
        backer.backed_projects << self
        @@backers << backer
    end 
    def backers
        @@backers
    end  
    
        
end    
