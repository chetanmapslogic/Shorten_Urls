class ShortenedUrl < ActiveRecord::Base
	default_scope { ShortenedUrl.order(use_count: :desc).limit(100) }
  after_create :generate
  # model is dealing with the generation of a url
  
  # make your own alphabet It contains 62 letters.
  @@chars = [*'0'..'9', *'a'..'z', *'A'..'Z', "_", "-"]

  # generae random links
  def generate
    #take an auto-generated, unique numerical key
    id = self.id

    #generate unique link using bijective_function function
    unique_key = bijective_function(id)
    
    #update unique key
    self.update_attributes!(unique_key: unique_key)
  end

private
  #requires use of integer division and modulo
  
  def bijective_function(id)
    return @@chars[0] if id == 0
    string = ""
    base = @@chars.length
    while id > 0
      string << @@chars[id.modulo(base)]
      id /= base
    end
    string.reverse
  end

end
