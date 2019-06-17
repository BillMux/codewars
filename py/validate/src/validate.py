# 1. Double every other digit, starting from the end of the number
# (if there are an even number of digits double every other digit
# starting from the first, if there are an odd number, start from the second)

# 2. If one of these numbers becomes a two digit number, replace it with the sum
# of its digits
# (this can be done by subtracting 9, as the resulting number cannot be greater
# than 18)

# 3. Sum the final digits

# 4. If this number is divisible by ten, return true

def validate(number):
    count = 0
    for index, digit in enumerate(reversed([int(x) for x in str(number)])):
        count += digit if index % 2 == 0 else digit * 2 - 9
        if index % 2 == 1 and digit > 4: count -= 9
    return count % 10 == 0
