from shared_functions import pretty_print_route, import_course, get_data

name = input("Course file: ")

course = import_course(name)

checkpoint_locations = [{
    "id" : "start",
    "name" : course["start_description"],
    "coords" : course["start_coordinates"],
    "has_fire" : False,
}]
checkpoint_locations += [get_data(checkpoint["id"]) for checkpoint in course["checkpoints"]]
pretty_print_route(checkpoint_locations)
