def hello(name)
    "Hello, "+name
end

def starts_with_consonant?(s)
    return false if /[[:alpha:]]/.match(s[0]) ==nil
    l=s[0].downcase
    return true unless (l=="a" or l=="e" or l=="i" or l=="o" or l=="u") 
    false
end

def binary_multiple_of_4?(s)
    return false if /[0-1]+/.match(s)==nil or  (/[0-1]+/.match(s)[0].length != s.length)
    return true if s.to_i(2) % 4 ==0 
    false
end


puts binary_multiple_of_4?("1010101010100")


