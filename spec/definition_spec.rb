require('rspec')
require('definition')


describe(Definition) do

  describe('#initialize', 'attr_reader') do
    it("returns the details of a new definition") do
      test_definition = Definition.new("big","large")
      expect(test_definition.def_one()).to(eq("big"))
      expect(test_definition.def_two()).to(eq("large"))
    end
  end

end
