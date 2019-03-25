# this method takes a string in the form of a sentence
# each word in this sentence contains a number
# the sentence is printed in numerical order of those numbers

def order(sentence):
    words = sentence.split(' ')
    new_list = []
    num = 1
    for _ in range(len(words)):
        for word in words:
            if str(num) in word:
                new_list.append(word)
                num += 1

    return ' '.join(new_list)
