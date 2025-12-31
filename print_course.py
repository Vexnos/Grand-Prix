from shared_functions import pretty_print_route, import_course, get_data, get_checkpoint_locations

name = input("Course file: ")

course = import_course(name)

checkpoint_locations = get_checkpoint_locations(course)
pretty_print_route(checkpoint_locations)
