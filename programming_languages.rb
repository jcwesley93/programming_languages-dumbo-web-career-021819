require 'pry'



  new_hash = {}
languages.each do |key, value|
  value.each do |lang, type|
    new_hash[lang] ||= type
        new_hash[lang][:style] ||= []
       new_hash[lang][:style] << key
  end
end
new_hash

end 
