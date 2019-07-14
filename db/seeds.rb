Friendship.destroy_all
Attempt.destroy_all
User.destroy_all
Quiz.destroy_all
Question.destroy_all
Comment.destroy_all

jerry = User.create(:username => 'jerry123', :password => 'jyt456hh', :email => 'jerry@yahoo.ca')
rima = User.create(:username => 'rima456', :password => 'rjelks2348', :email => 'rima@hotmail.com')
darshil = User.create(:username => 'darshil378', :password => 'afsa3234fa', :email => 'darshil@gmail.ca')
helen = User.create(:username => 'helen809', :password => 'afsa3234sdf', :email => 'helen@gmail.ca')
admin = User.create(:username => 'admin1', :password => 'hello123',:email => 'admin1@gmail.com', :user_type => 1)

drinks_in_russian = Quiz.create(:title => 'Drinks in Russian', :description => 'Learn how to say the names of all your favourite drinks!', :user_id => helen.id, :difficulty_level => 0, :language_learning => 3, :instruction_language => 0)
animals_in_russian = Quiz.create(:title => 'Animals in Russian', :description => 'Learn how to say the names of all your favourite animals!', :user_id => helen.id, :difficulty_level => 0, :language_learning => 3, :instruction_language => 0)
countries_in_french = Quiz.create(:title => 'Countries in French', :description => 'Learn how to say the names of many countries in the word!', :user_id => helen.id, :difficulty_level => 0, :language_learning => 1, :instruction_language => 0)
foods_in_french = Quiz.create(:title => 'Foods in French', :description => 'Learn how to say the names of all your favourite foods!', :user_id => helen.id, :difficulty_level => 0, :language_learning => 1, :instruction_language => 0)
foods_in_korean = Quiz.create(:title => 'Foods in Korean', :description => 'Learn how to say the names of all your favourite foods!', :user_id => helen.id, :difficulty_level => 0, :language_learning => 2, :instruction_language => 0)
animals_in_korean = Quiz.create(:title => 'Animals in Korean', :description => 'Learn how to say the names of all your favourite animals!', :user_id => helen.id, :difficulty_level => 0, :language_learning => 2, :instruction_language => 0)


rus_water = Question.create(:quiz_id => drinks_in_russian.id, :question => 'вода', :option_a => 'juice', :option_b => 'milk', :option_c => 'beer', :answer => 'water')
rus_tea = Question.create(:quiz_id => drinks_in_russian.id, :question => 'чай', :option_a => 'juice', :option_b => 'coffee', :option_c => 'milk', :answer => 'tea')
rus_juice = Question.create(:quiz_id => drinks_in_russian.id, :question => 'сок', :option_a => 'hot cocoa', :option_b => 'tea', :option_c => 'soda', :answer => 'juice')
rus_coffee = Question.create(:quiz_id => drinks_in_russian.id, :question => 'кофе', :option_a => 'vodka', :option_b => 'milk', :option_c => 'beer', :answer => 'coffee')
rus_cocoa = Question.create(:quiz_id => drinks_in_russian.id, :question => 'какао', :option_a => 'tea', :option_b => 'milk', :option_c => 'beer', :answer => 'hot cocoa')
rus_soda = Question.create(:quiz_id => drinks_in_russian.id, :question => 'кола', :option_a => 'wine', :option_b => 'vodka', :option_c => 'juice', :answer => 'soda')
rus_milk = Question.create(:quiz_id => drinks_in_russian.id, :question => 'молоко', :option_a => 'hot cocoa', :option_b => 'tea', :option_c => 'coffee', :answer => 'milk')
rus_wine = Question.create(:quiz_id => drinks_in_russian.id, :question => 'вино', :option_a => 'beer', :option_b => 'vodka', :option_c => 'coffee', :answer => 'wine')
rus_beer = Question.create(:quiz_id => drinks_in_russian.id, :question => 'пиво', :option_a => 'hot cocoa', :option_b => 'milk', :option_c => 'wine', :answer => 'beer')
rus_vodka = Question.create(:quiz_id => drinks_in_russian.id, :question => 'водка', :option_a => 'milk', :option_b => 'water', :option_c => 'soda', :answer => 'vodka')

rus_cat = Question.create(:quiz_id => animals_in_russian.id, :question => 'kот, kошка', :option_a => 'dog', :option_b => 'bear', :option_c => 'monkey', :answer => 'cat')
rus_dog = Question.create(:quiz_id => animals_in_russian.id, :question => 'cобака', :option_a => 'bear', :option_b => 'cat', :option_c => 'lion', :answer => 'dog')
rus_bear = Question.create(:quiz_id => animals_in_russian.id, :question => 'mедведь', :option_a => 'lion', :option_b => 'elephant', :option_c => 'giraffe', :answer => 'bear')
rus_elephant = Question.create(:quiz_id => animals_in_russian.id, :question => 'cлон', :option_a => 'rabbit', :option_b => 'tiger', :option_c => 'lion', :answer => 'elephant')
rus_lion = Question.create(:quiz_id => animals_in_russian.id, :question => 'лев', :option_a => 'tiger', :option_b => 'rabbit', :option_c => 'monkey', :answer => 'lion')
rus_tiger = Question.create(:quiz_id => animals_in_russian.id, :question => 'тигр', :option_a => 'dog', :option_b => 'bear', :option_c => 'cat', :answer => 'tiger')
rus_giraffe = Question.create(:quiz_id => animals_in_russian.id, :question => 'жираф', :option_a => 'camel', :option_b => 'rabbit', :option_c => 'monkey', :answer => 'giraffe')
rus_camel = Question.create(:quiz_id => animals_in_russian.id, :question => 'верблюд', :option_a => 'lion', :option_b => 'cat', :option_c => 'giraffe', :answer => 'camel')
rus_rabbit = Question.create(:quiz_id => animals_in_russian.id, :question => 'kролик', :option_a => 'dog', :option_b => 'camel', :option_c => 'bear', :answer => 'rabbit')
rus_monkey = Question.create(:quiz_id => animals_in_russian.id, :question => 'oбезьяна', :option_a => 'cat', :option_b => 'camel', :option_c => 'giraffe', :answer => 'monkey')

drinks_in_russian.questions << rus_water
drinks_in_russian.questions << rus_tea
drinks_in_russian.questions << rus_beer
drinks_in_russian.questions << rus_cocoa
drinks_in_russian.questions << rus_coffee
drinks_in_russian.questions << rus_juice
drinks_in_russian.questions << rus_milk
drinks_in_russian.questions << rus_soda
drinks_in_russian.questions << rus_vodka
drinks_in_russian.questions << rus_wine

animals_in_russian.questions << rus_bear
animals_in_russian.questions << rus_cat
animals_in_russian.questions << rus_dog
animals_in_russian.questions << rus_elephant
animals_in_russian.questions << rus_lion
animals_in_russian.questions << rus_tiger
animals_in_russian.questions << rus_giraffe
animals_in_russian.questions << rus_camel
animals_in_russian.questions << rus_rabbit
animals_in_russian.questions << rus_monkey

Attempt.create(:quiz_id => drinks_in_russian.id, :user_id => helen.id, :score => 100)
Attempt.create(:quiz_id =>  drinks_in_russian.id, :user_id => helen.id, :score => 80)
Attempt.create(:quiz_id =>  drinks_in_russian.id, :user_id => darshil.id, :score => 65)
Attempt.create(:quiz_id =>  drinks_in_russian.id, :user_id => rima.id, :score => 77)
Attempt.create(:quiz_id => animals_in_korean.id, :user_id => jerry.id, :score => 88)
Attempt.create(:quiz_id => animals_in_korean.id, :user_id => jerry.id, :score => 90)
Attempt.create(:quiz_id => foods_in_french.id, :user_id => darshil.id, :score => 46)
Attempt.create(:quiz_id => foods_in_french.id, :user_id => rima.id, :score => 87)

c_1 = Comment.create(:body => 'Fun!', :user_id => helen.id, :quiz_id => drinks_in_russian.id)
c_2 = Comment.create(:body => 'I love this quiz!', :user_id => jerry.id, :quiz_id => drinks_in_russian.id)
c_3 = Comment.create(:body => 'So helpful', :user_id => rima.id, :quiz_id => drinks_in_russian.id)
c_4 = Comment.create(:body => 'Great!', :user_id => darshil.id, :quiz_id => drinks_in_russian.id)
c_5 = Comment.create(:body => 'I hated this course!', :user_id => darshil.id, :quiz_id => animals_in_russian.id)
c_6 = Comment.create(:body => 'I hated this!', :user_id => darshil.id, :quiz_id => animals_in_korean.id)
c_6 = Comment.create(:body => 'This was such a fun course!', :user_id => darshil.id, :quiz_id => foods_in_korean.id)

Friendship.create(user: helen, friend: jerry)
Friendship.create(user: jerry, friend: helen)
Friendship.create(user: helen, friend: rima)
Friendship.create(user: rima, friend: darshil)
Friendship.create(user: jerry, friend: darshil)
Friendship.create(user: helen, friend: darshil)

