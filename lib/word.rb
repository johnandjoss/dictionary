class Word

  @@words = []

  attr_reader(:name)

  define_method(:initialize) do |name|
    @name = name
    @id = @@words.length().+(1)
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end
end
