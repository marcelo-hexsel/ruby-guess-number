
max_tries = 5

numbers_tried = []

def say_welcome
	puts "Welcome to guess number game!"
	puts "\nWhat's your name?"
	player_name = gets.strip

	puts "\nHello " + player_name
end

def generate_random_number
	generated_number = 199
end

def request_player_try (try_number, max_tries, numbers_tried)
	puts "Try number #{try_number} of #{max_tries}"
	puts "Numbers already tried: #{numbers_tried}"
	puts "Try to guess a number between 0 and 200"
	number_try = gets.strip.to_i
	numbers_tried << number_try
	number_try
end

def check_answer(number_try, secret_number)
	if secret_number == number_try
		puts "Correct!"
		return true
	end

	is_bigger = secret_number > number_try
	if is_bigger
		puts "Nope, the number is bigger..."
	else
		puts "Nope, the number is smaller..."
	end
	false
end

say_welcome
secret_number = generate_random_number

for try in 1..max_tries

	number_try = request_player_try try, max_tries, numbers_tried
	if check_answer number_try, secret_number
		break
	end
end
