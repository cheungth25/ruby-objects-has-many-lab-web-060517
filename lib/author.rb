class Author
  attr_accessor :name
  attr_reader :posts
  @@post_count = 0
  def initialize(author_name)
    @name = author_name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
    self
  end

  def add_post_by_title(post_name)
    post = Post.new(post_name)
    post.author = self
    @posts << post
    @@post_count += 1
    self
  end

  def self.post_count
    @@post_count
  end
end
