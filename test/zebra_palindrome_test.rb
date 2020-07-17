require "test_helper"

class ZebraPalindromeTest < Minitest::Test
  def test_non_palindrome
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "Racecar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam".palindrome?
  end

  def test_integer_non_palindrome
    refute 12345.to_s.palindrome?
  end

  def test_integer_palindrome
    assert 12321.palindrome?
  end

  def test_spaces_non_palindrome
    refute "   ".palindrome? 
  end
end
