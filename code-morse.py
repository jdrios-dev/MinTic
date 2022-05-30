MORSE_CODE = {
  '-----': '0', 
  '.----': '1', 
  '..---': '2', 
  '...--': '3',
  '....-': '4',
  '.....': '5',
  '-....': '6', 
  '--...': '7',
  '---..': '8',
  '----.': '9',
  '.-': 'a',
  '-...': 'b', 
  '-.-.': 'c', 
  '-..': 'd', 
  '.': 'e', 
  '..-.': 'f',
  '--.': 'g',
  '....': 'h',
  '..': 'i', 
  '.---': 'j',
  '-.-': 'k',
  '.-..': 'l',
  '--': 'm',
  '-.': 'n',
  '---': 'o',
  '.--.': 'p',
  '--.-': 'q',
  '.-.': 'r',
  '...': 's', 
  '-': 't',
  '..-': 'u', 
  '...-': 'v',
  '.--': 'w', 
  '-..-': 'x', 
  '-.--': 'y', 
  '--..': 'z', 
  '.-.-.-': '.',
  '--..--': ',',
  '..--..': '?', 
  '-.-.--': '!',
  '-....-': '-', 
  '-..-.': '/', 
  '.--.-.': '@',
  '-.--.': '(',
  '-.--.-': ')',
  }

def decode_word(word):
  temp = ""
  for letra in word.split(' '):
    if letra in MORSE_CODE:
      temp += MORSE_CODE[letra]
  return temp

def decode_morse(morse_code):
  if morse_code == '...---...':
    print('SOS')
    return
  
  morse_code = morse_code.split("   ")

  resultado = ""
  for palabra in morse_code:
    resultado += decode_word(palabra) + ' '
  print (resultado.upper())

decode_morse('-..  .-  -.  ..  .  .-..')
    
    # ToDo: Accept dots, dashes and spaces, return human-readable message
    #return morse_code.replace('.', MORSE_CODE['.']).replace('-', MORSE_CODE['-']).replace(' ', '')