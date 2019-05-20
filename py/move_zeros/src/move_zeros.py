def move_zeros(numbers):
    i = 0
    while i < len(numbers) - numbers.count(0):
        if numbers[i] == 0: numbers.insert((len(numbers) - 1), numbers.pop(i))
        else: i += 1
    return numbers
