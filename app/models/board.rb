class Board
  BOARD_SIZE = 24

  def initialize
    @phrase_bank = Word.pluck(:word).freeze
    @used_words  = []
  end

  def generate
    return [] if phrase_bank.size < BOARD_SIZE
    while used_words.size <= BOARD_SIZE
      word = phrase_bank.sample
      next if used_words.include? word
      used_words.push word
    end
    make_board
  end

  private

  attr_reader :phrase_bank, :used_words

  def make_board
    [
        used_words[0..4],
        used_words[5..9],
        used_words[10..13],
        used_words[14..18],
        used_words[19..23]
    ]
  end
end
