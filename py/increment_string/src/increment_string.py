def increment_string(string):
    if string == '' or not string[-1].isdigit(): return string + '1'
    elif len(string) == 1: return str(int(string) + 1)

    num_string = ''
    for i, x in enumerate(reversed(string)):
        if i > 0 and x == '0':
            string = string[:-i]
            break

        if x.isdigit() and i != len(string) - 1:
            num_string = x + num_string
        elif i > 0:
            string = string[:-i]
            break

    if string[-1] == '0' and num_string.replace('9', '') == '':
        string = string[:-1]
    return string + str(int(num_string) + 1)
