require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'


class TranslatorTest < Minitest::Test

  def test_it_can_translate_english_to_morse
    translator = Translator.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("Hello World")
    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_it_can_translate_files
    translator = Translator.new

    assert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("./file.txt")
  end
end
