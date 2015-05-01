class Definition

  @@definitions = []

  attr_reader(:def_one, :def_two)

  define_method(:initialize) do |def_one, def_two|
    @def_one = def_one
    @def_two = def_two
  end


end
