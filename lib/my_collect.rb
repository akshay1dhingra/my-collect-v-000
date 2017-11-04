

def my_collect(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i]).upcase
    i += 1
  end
  collection
end

array = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(array) do |languages|
  languages.upcase
end
