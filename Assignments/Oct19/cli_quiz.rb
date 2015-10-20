#!/usr/bin/env rvm-auto-ruby

require 'yaml'

def quiz_client
  correct_answers = 0
  question_array = fetch_questions
  question_count = question_array.size
  question_array.each do |question_hash|
    question, answer, choices = parse_question(question_hash)
    answer_index = display_question(question, choices, answer)
    client_answer = get_response
    correct_answers += 1 if client_answer == answer_index
  end
  display_score(correct_answers, question_count)
end

def fetch_questions  
  YAML.load_file('quiz.yaml')
end

def parse_question(hash)
  question, answers = hash.values
  correct, incorrect = answers.values
  choices = [correct, incorrect].flatten
  [question, correct, choices]
end

def display_question(question, choices, answer)
  answer_index = nil
  puts question
  choices.shuffle.each_with_index do |choice, index|
  	puts "#{index + 1}. #{choice}"
  	answer_index = index + 1 if choice == answer
  end
  answer_index
end

def get_response
  puts "What is your response?"	
  gets.chomp.to_i
end

def display_score(correct, total)
  print "You got #{correct} out of #{total} questions correct"
end

if __FILE__ == $0
  quiz_client
end