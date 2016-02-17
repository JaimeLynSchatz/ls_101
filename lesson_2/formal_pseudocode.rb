# # Formal Pseudo-Code
# START = 'start of the program'
# SET = 'sets a variable we can use for later'
# GET = 'retrieve input from user'
# PRINT = 'displays output to user'
# READ = 'retrieve value from variable'
# IF = 'conditional logic branches'
# ELSEIF = IF
# ELSE = IF
# WHILE = 'show looping logic'
# THEEND = 'end of the program, END is a reserved word'

# # Re-write

# START

# # Given a collection of integers called "numbers"

# SET iterator = 1
# SET saved_number = value within numbers collection at space 1

# WHILE iterator < length of numbers
#   SET current_number = value within numbers collection at space "iterator"
#   IF saved_number >= current_number
#     go to the next iteration
#   ELSE
#     saved_number = current_number

#   iterator = iterator + 1

# PRINT saved_number

# THEEND

