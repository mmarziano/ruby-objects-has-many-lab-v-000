class Post 
  attr_accessor :name, :author, :title 
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end 
  
  def author 
    @author 
  end 
  
  def title 
    @title
  end
  
  def author_name 
    if self.author == self
      return self.author 
    else 
      return nil 
    end 
    
  end 
end 