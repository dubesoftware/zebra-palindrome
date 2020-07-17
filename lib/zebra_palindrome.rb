require "zebra_palindrome/version"

module ZebraPalindrome
  def palindrome?
    !processed_content.empty? &&
      processed_content == processed_content.reverse
  end

  private
  
    def processed_content
      to_s.scan(/[a-z\d]/i).join.strip.downcase
    end
end

class String
  include ZebraPalindrome
end

class Integer
  include ZebraPalindrome
end
