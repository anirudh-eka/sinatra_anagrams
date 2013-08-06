file = File.open("./app/words.txt")

file.each_line do |line|
  Word.create({word: line.chomp})
end
