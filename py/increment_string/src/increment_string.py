def increment_string(string):
    if string == '': return '1'
    if not string[-1].isdigit(): return string + '1'

    num_string = ''
    i = 0
    for x in reversed(string):
        if i < 0 and x == '0':
            string = string[:i]
            break

        if x.isdigit():
            num_string = x + num_string
            i -= 1
        else:
            string = string[:i]
            break

    if string[-1] == '0' and num_string.replace('9', '') == '':
        string = string[:-1]
    return string + str(int(num_string) + 1)
