require 'sinatra'

get '/coin_toss' do
  array = ["heads","tails"]
  result = rand(array.length)
  heads_or_tails = array[result]
  erb :index,locals:{msg:heads_or_tails}
end

get '/dice_roll' do
  num = rand(1..6)
  erb :index,locals:{msg:num}
end

get '/magic8ball/will%20it%20snow%20tomorrow' do .
  array = [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
    ]
  result = rand(array.length)
  fortune = array[result]
  erb :index,locals:{msg:"Will it snow tomorrow? #{fortune}"}
end

get '/rps/rock' do
  array = ["paper","rock","scissor"]
  result = rand(array.length)
  computer = array[result]
  if computer == "paper"
    choice = "The computer chose paper. You win!"
  elsif computer == "rock"
    choice = "It's a tie! Try again."
  else
    choice = "The computer chose scissor. You lose."
  end
  erb :index,locals:{msg:choice}
end

get '/rps/scissors' do
  array = ["paper","rock","scissor"]
  result = rand(array.length)
  computer = array[result]
  if computer == "paper"
    choice = "The computer chose paper. You lose!"
  elsif computer == "scissors"
    choice = "It's a tie! Try again."
  else
    choice = "The computer chose rock. You lose."
  end
  erb :index,locals:{msg:choice}
end

get '/rps/paper' do
  array = ["paper","rock","scissor"]
  result = rand(array.length)
  computer = array[result]
  if computer == "rock"
    choice = "The computer chose rock. You win!"
  elsif computer == "paper"
    choice = "It's a tie! Try again."
  else
    choice = "The computer chose scissors. You lose."
  end
  erb :index,locals:{msg:choice}
end
