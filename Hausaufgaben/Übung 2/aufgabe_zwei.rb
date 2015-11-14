class Dokument
  attr_reader :inhalt
  def initialize (inhalt)
    @inhalt = inhalt
  end
  def kontext(token)
    textTokens = inhalt.split
    index = textTokens.find_index(token)
    result = [textTokens[index-1],">>"+textTokens[index]+"<<",textTokens[index+1]]
    return result
  end
end

instanz = Dokument.new("Ein sehr kleines Dokument. Es besteht aus zwei Sätzen.")
puts instanz.kontext("besteht")

