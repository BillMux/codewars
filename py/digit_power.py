# take the args subject and power
# subject is split into digits
# first digit is powered by power
# second digit is powered by power + 1 etc...
# return the number


def digit_power(subject, power):
    count = 0
    int_str_list = map(int, str(subject))

    for i in range(0, len(int_str_list)):
        count += int_str_list[i] ** (power + i)

    return count / subject if(count % subject == 0) else -1


print(digit_power(89, 1), digit_power(89, 1) == 1)
print(digit_power(92, 1), digit_power(92, 1) == -1)
print(digit_power(46288, 3), digit_power(46288, 3) == 51)
