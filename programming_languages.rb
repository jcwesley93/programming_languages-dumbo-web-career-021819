require 'pry'

def reformat_languages(languages)
  new_hash = {}
    languages.each do |style, language|
        language.each do |lang, attribute|
          if new_hash.keys.include?(lang)
            new_hash[lang][:style] << style
          else type_value_arr = :type.values
            type_value = type_value_arr[0]
            new_hash[lang] = {:type => type_value, :style => [style]}

          end
        end
    end
    return new_hash
  end

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
