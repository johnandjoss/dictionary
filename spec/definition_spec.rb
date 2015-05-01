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

  describe('#save') do
    it('adds a definition to the array of saved definitions') do
      test_definition = Definition.new("big","large")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end
end
