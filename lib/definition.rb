class Definition

  @@definitions = []

  attr_reader(:def_one, :def_two)

  define_method(:initialize) do |def_one, def_two|
    @def_one = def_one
    @def_two = def_two
    @id = @@definitions.length().+(1)
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

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    found_definition = nil
    @@definitions.each() do |entry|
      if entry.id().eql?(identification.to_i())
        found_definition = entry
      end
    end
    found_definition
  end

end
