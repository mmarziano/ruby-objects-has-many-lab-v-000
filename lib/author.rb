class Author 
  attr_accessor :name, :posts 
  
  @@posts = []
  
  def initialize(name)
    @name = name
    
  end 
  
  def posts 
    @@posts
  end 
  
  def add_post(name)
    @@posts << name 
    name.author = self
  end 
  
  def add_post_by_title(name)
    new_post = Post.new(name)
    @@posts << new_post 
    new_post.author = self
  end 
  
  def self.post_count 
    @@posts.count 
  end 
end 