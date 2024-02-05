class WordPlay
end

class String
  def sentences
    self.scan(/.*?[.!?]/).map{ |sentence| sentence.strip }
  end

  def words
    self.scan(/\w[\w\'\-]*/)
  end
end

p %q{this is a text. The new start was born in the sky. Several balls fell out of the basket.}.sentences[1].words
p %q{Hello. This is a test of basic sentence splitting. It even works over multiple lines.}.sentences