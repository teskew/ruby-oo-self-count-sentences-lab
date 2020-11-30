require 'pry'

class String

  def sentence?
    self.end_with?(".")

  end

  def question?
      self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences 
      count = self.split(/[.!?]/ )
     count.reject {|sentence| sentence.nil? || sentence ==""}.length
  end
end