#Placeholder for a model

class Article < ActiveRecord::Base
  attr_accessor :article, :content 
  @@all = []
  
  def initialize(article, content)
    @article = article
    @content = content 
    @@all << self
  end
    
end