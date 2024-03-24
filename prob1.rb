def extract_urls(text)
    url_pattern = %r{\b(?:http|https|ftp)://\S+\.\S+\b}
    text.scan(url_pattern).each do |url|
        puts url
    end
end
  
sample_text = "Visit our site at http://www.example.org for more information. 
Check out our search page at https://example.com/search?q=ruby+regex. 
Don`t forget to ftp our resources at ftp://example.com/resources."
  
extract_urls(sample_text)