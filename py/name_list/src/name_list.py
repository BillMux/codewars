# Input: and array of hashes containing information about people incl. name
# Output: a formatted string containing the names of these people

def name_list(names):
    list = []
    string = ''
    for hsh in names:
        list.append(hsh['name'])

    for index, name in enumerate(list):
        names_left = len(list) - index
        if names_left > 2:
            string += f"{name}, "
        elif names_left == 2:
            string += f"{name} & "
        elif names_left == 1:
            string += name

    return string
