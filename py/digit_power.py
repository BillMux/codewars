def digit_power(subject, power):
    count = 0
    int_str_list = map(int, str(subject))

    for i in range(0, len(int_str_list)):
        count += int_str_list[i] ** (power + i)

    return count / subject if(count % subject == 0) else -1
