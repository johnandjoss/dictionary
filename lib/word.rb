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

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_word = nil
    @@words.each() do |entry|
      if entry.id().eql?(identification.to_i())
        found_word = entry
      end
    end
    found_word
  end

end
