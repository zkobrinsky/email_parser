require 'pry'


text = "Paste your poorly formatted gmail address list here"
text = text.split(",")

def email_collector (email_string)
    email_string.collect do |email| 
      email.split(" ").last.gsub(/[<>]/, "") 
    end
end

def display_list (email_string)
  emailable_list = email_collector(email_string)
  puts "\n\n"
  puts "HERE IS YOUR FORMATTED EMAIL LIST:\n\n"
  emailable_list[0..-2].each do |email|
    puts email+","
  end
  puts emailable_list.last
end

display_list(text)

