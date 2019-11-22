# Rappresenta una carta da gioco

class Carta

def batte?(altra_carta)
end

def pareggia?(altra_carta)
end

STRINGHE_SEME = {
  cuori: "♥️",
  quadri: "♦",
  fiori: "♣",
  picche: "♠"
}

STRINGHE_VALORE = {
  due: "2",
  tre: "3",
  quattro: "4",
  cinque: "5",
  sei: "6",
  sette: "7",
  otto: "8",
  nove: "9",
  dieci: "10",
  fante: "J",
  regina: "Q",
  re: "K",
  asso: "A"
}

VALORE_DI_GUERRA = {
  due: 2,
  tre: 3,
  quattro: 4,
  cinque: 5,
  sei: 6,
  sette: 7,
  otto: 8,
  nove: 9,
  dieci: 10,
  fante: 11,
  regina: 12,
  re: 13,
  asso: 14
}

# Restituisce un array di tutti i semi.
def self.semi
  STRINGHE_SEME.keys
end

# Restituisce un array di tutti i valori.
def self.valori
  STRINGHE_VALORE.keys
end

attr_reader :seme, :valore

def initialize(seme, valore)
  unless Carta.semi.include?(seme) and Carta.valori.include?(valore)
    raise "seme (#{seme}) o valore (#{valore}) non permesso"
  end

  @seme, @valore = seme, valore
end

def valore_guerra
  VALORE_DI_GUERRA[valore]
end


def to_s
  STRINGHE_VALORE[valore] + STRINGHE_SEME[seme]
end

# Confronta due carte per stabilire se sono uguali in seme e valore
def ==(other_card)
  return false if other_card.nil?

  [:seme, :valore].all? do |attr|
    self.send(attr) == other_card.send(attr)
  end
end


end


c = Carta.new(:quadri,:asso)

puts c

p Carta.semi.include?(:cuori)

p Carta.valori

puts c.to_s
