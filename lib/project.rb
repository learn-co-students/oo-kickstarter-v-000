#<Project:0x00000001abd168 @title="All The Ropes", @backers=[#<Backer:0x00000001abd000 @name="Arel", @backed_projects=[]>]>
#<Project:0x00000001abd168 @title="All The Ropes", @backers=[#<Backer:0x00000001abd000 @name="Arel", @backed_projects=[]>]>]
class Project
  attr_reader  :title, :backers

  def initialize(title)
    @title = title
    @backers  = []
  end
  def add_backer(backer)
    backers << backer
    backer.backed_projects  <<  self
  end

end
      
