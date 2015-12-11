class Dokument
  attr_reader :inhalt
  def initialize (inhalt)
    @inhalt = inhalt
  end
  def schreibweise(token)
    textTokens = inhalt.split
    klein = textTokens.count token.downcase
    groß = textTokens.count token.capitalize
    return "Das Wort '#{token}' wurde im Text #{klein}-mal klein und #{groß}-mal groß gefunden."
  end
end

document = Dokument.new ("Der Rotfuchs (Vulpes vulpes) ist der einzige mitteleuropäische Vertreter der Füchse und wird daher meistens als der Fuchs bezeichnet.")
puts document.schreibweise ("der")