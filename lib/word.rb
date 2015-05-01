class Word

  @@words = []

  attr_reader(:name)

  define_method(:initialize) do |name|
    @name = name
    @id = @@words.length().+(1)
  end

end
