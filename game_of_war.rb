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
  otto: "8"


}

# Restituisce un array di tutti i semi.
def self.semi
  STRINGHE_SEME.keys
end

# Restituisce un array di tutti i valori.each do |
|


end



end

puts Carta.semi
