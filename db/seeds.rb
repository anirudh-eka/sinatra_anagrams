file = File.open("./app/words.txt")

file.each_line do |line|
  sorted = line.chomp.downcase.split('').sort.join
  Word.create({word: line.chomp, sorted_letters: sorted})
end
