require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#name') do
    it('returns the name of the word') do
      test_word = Word.new("sofa")
      expect(test_word.name()).to(eq("sofa"))
    end
  end

  describe('#save') do
    it('adds a word to the array of saved words') do
      test_word = Word.new("book")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved definitions') do
      Word.new('cloud').save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the word') do
      test_word = Word.new("far")
      test_word.save()
      expect(test_word.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns a definition by its id') do
      test_word = Word.new('bus')
      test_word.save()
      test_word2 = Word.new('brown')
      test_word2.save()
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end

  describe('#add_definition') do
    it('adds a new definition to a word') do
      test_word = Word.new('scared')
      test_definition = Definition.new('frightened','anxious')
      test_word.add_definition(test_definition)
      expect(test_word.word_defs()).to(eq([test_definition]))
    end
  end

end
