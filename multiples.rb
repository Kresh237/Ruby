=begin 

Enoncé : Multiples de 3 et 5
Cédric Villani a besoin d'aide pour son prochain prix Nobel de Mathématiques. Il a besoin de résoudre le problème suivant :
Si on liste tous les entiers naturels en dessous de 10 qui sont multiples de 3 ou 5, on obtient 3, 5, 6, et 9. La somme de ces nombres est égale à 23.
Trouve la somme des multiples de 3 et 5 inférieurs à 1000.@@ 
=end

#Méthode 1
puts (1...1000).select{ |n| n % 3 == 0 || n % 5 == 0 }.reduce(:+)

#Méthode 2
def multiples_nombres
1.upto(1000).select { |n| n%3 == 0 || n%5 == 0}
end

def somme
multiples_nombres.reduce(:+)
end

somme

#Methode 3

def multiples(limit, *numbers)
  (1...limit).select do |candidate|
    numbers.any? { |divider| candidate % divider == 0 }
  end.reduce(:+)
end

multiples(1000, 3)
multiples(1000, 3, 5)
multiples(1000, 3, 5, 10)