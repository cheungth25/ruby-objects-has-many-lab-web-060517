class Post
  attr_accessor :title, :author
  def initialize(post_title)
    @title = post_title
  end

  def author_name
    return nil if !@author
    @author.name
  end

end
