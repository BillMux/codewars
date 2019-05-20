# ToDo: Accept dots, dashes and spaces, return human-readable message
MORSE = {
    '.-':   'A', '-...': 'B',
    '-.-.': 'C', '-..':  'D',
    '.':    'E', '..-.': 'F',
    '--.':  'G', '....': 'H',
    '..':   'I', '.---': 'J',
    '-.-':  'K', '.-..': 'L',
    '--':   'M', '-.':   'N',
    '---':  'O', '.--.': 'P',
    '--.-': 'Q', '.-.':  'R',
    '...':  'S', '-':    'T',
    '..-':  'U', '...-': 'V',
    '.--':  'W', '-..-': 'X',
    '-.--': 'Y', '--..': 'Z',
    ' ': '', '  ': ' '
}
def decodeMorse(code):
    output = ''
    for word in code.split('  '):
        for letter in word.split():
            output += MORSE[letter]
        output += ' '
    return output.strip()
