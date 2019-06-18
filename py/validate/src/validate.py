# 1. Double every other digit, starting from the end of the number

# 2. If one of these numbers becomes a two digit number, replace it with the sum
# of its digits

# 3. Sum the final digits

# 4. If this number is divisible by ten, return true

def validate(number):
    count = 0
    for index, digit in enumerate(reversed([int(x) for x in str(number)])):
        count += digit if index % 2 == 0 else digit * 2
        if index % 2 == 1 and digit > 5: count -= 9
    return count % 10 == 0

    # alternative solution
    # while index < len(digit_list):
    #     digit_list[index] *= 2
    #     if digit_list[index] > 9: digit_list[index] -= 9
    #     index += 2
    # return sum(digit_list) % 10 == 0
