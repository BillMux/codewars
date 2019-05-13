def increment_string(string):
    before = string.rstrip('1234567890')
    after = string[len(before):]
    if after == '': return before + '1'
    return before + str(int(after) + 1).zfill(len(after))
