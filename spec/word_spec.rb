require('rspec')
require('word')


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

end
