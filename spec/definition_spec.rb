require('rspec')
require('definition')


describe(Definition) do
  before() do
    Definition.clear()
  end

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

  describe('.clear') do
    it("empties out all of the saved definitions") do
      Definition.new("high up", "tall").save()
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the definition') do
      test_definition = Definition.new("far", "in distance")
      test_definition.save()
      expect(test_definition.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a definition by its id') do
      test_definition = Definition.new("far", "in distance")
      test_definition.save()
      test_definition2 = Definition.new("brown", "dark tan")
      test_definition2.save()
      expect(Definition.find(test_definition.id())).to(eq(test_definition))
    end
  end
end
