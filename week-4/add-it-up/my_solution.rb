def total(array)
  array.inject { |sum,x| sum + x}
end

def sentence_maker(array)
   string = array.join(' ').capitalize! + '.'
end