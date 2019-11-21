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

end


#c = Carta.new("cuori", "dieci")

#puts c

puts Carta.semi.class

puts Carta.valori
