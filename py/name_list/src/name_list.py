def name_list(names):
    # why would you even use a hash th0?

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
        else: return ''
    return string
