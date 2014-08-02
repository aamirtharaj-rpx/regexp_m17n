require 'pry'
module RegexpM17N
  def self.non_empty?(str)
    return true if str != nil && str != '' && str.encoding.dummy?
    str =~ Regexp.new('^.+$'.encode(str.encoding))
  end
end