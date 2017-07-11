=begin
En cryptographie, le chiffrement par décalage, aussi connu comme le chiffre de César ou le code de César (voir les différents noms), est une méthode de chiffrement très simple utilisée par Jules César dans ses correspondances secrètes (ce qui explique le nom « chiffre de César »).
Le texte chiffré s'obtient en remplaçant chaque lettre du texte clair original par une lettre à distance fixe, toujours du même côté, dans l'ordre de l'alphabet. Pour les dernières lettres (dans le cas d'un décalage à droite), on reprend au début. Par exemple avec un décalage de 3 vers la droite, A est remplacé par D, B devient E, et ainsi jusqu'à W qui devient Z, puis X devient A etc. Il s'agit d'une permutation circulaire de l'alphabet. La longueur du décalage, 3 dans l'exemple évoqué, constitue la clé du chiffrement qu'il suffit de transmettre au destinataire — s'il sait déjà qu'il s'agit d'un chiffrement de César — pour que celui-ci puisse déchiffrer le message. Dans le cas de l'alphabet latin, le chiffre de César n'a que 26 clés possibles (y compris la clé nulle, qui ne modifie pas le texte).

Ta mission : créér une fonction chiffre_de_cesar qui prend en paramètre un string et le nombre de lettre à décaler, et sort le string modifié.
=end

#Solution 1 (sans la casse)

puts "Saisir un mot : "
texte = gets.chomp

puts "Saisir un chiffre :"
n = gets.chomp.to_i

def chiffre_de_cesar(texte, n)
alphabet = ('a'..'z').to_a  
cle = Hash[alphabet.zip(alphabet.rotate(n))]
texte.each_char.inject("") { |nouveautexte, char| nouveautexte + cle[char] }
end

puts chiffre_de_cesar(texte, n)

#Solution 2
def cesar_crypt(sentence, key)
  letters = ('a'..'z').to_a.join
  mapping = ('a'..'z').to_a.rotate(key).join
  sentence.tr(letters + letters.upcase, mapping + mapping.upcase)
end

cesar_crypt("What a string!", 5)

