require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sent = self

    sent = sent.gsub('...', '*')
    sent = sent.gsub('.', '*')
    sent = sent.gsub('!!', '*')
    sent = sent.gsub('!', '*')
    sent = sent.gsub('??', '*')
    sent = sent.gsub('?', '*')

    sent.scan('*').count
  end
end