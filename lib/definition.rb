class Definition

  @@definitions = []

  attr_reader(:def_one, :def_two)

  define_method(:initialize) do |def_one, def_two|
    @def_one = def_one
    @def_two = def_two
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end
end
