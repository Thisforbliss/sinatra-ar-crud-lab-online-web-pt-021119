#Placeholder for a model

class Article < ActiveRecord::Base
  attr_accessor :article, :content 
  
  
  def initialize(article, content)
    @article = article
    @content = content 
  end
    
end