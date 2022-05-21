#IDEA: create a game that takes an hour and create a random hour
# the users has to input the hour that he will arrive at the train
# if taht is more thank 2 hours more or less, he will lost the train

import random


game_is_active = True

points = 0
def win_point(x):
  points =+ x
  print("You have: ", points, ' points')

def game_active():
  departure_hour = random.randrange(0,24)
  my_hour= int(input('What time will you get to the train station: '))
  difference = abs(departure_hour - my_hour)
  
  if(difference > 2):
    print('you lost the train, it leaves at: ', departure_hour)
    # exit(0)
  else :
    print('Just in time!!')
    win_point(10)
  

while(game_is_active):
  game_active()


