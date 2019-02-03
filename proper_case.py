import sys

return_value = ""
try:
  for arg in sys.argv[1:]:
    return_value += arg.capitalize() + " "
except:
  return_value = "Error"

print(return_value.rstrip())     
