import re
import requests

FUNCTION_SIGNATURES_FILE = "https://raw.githubusercontent.com/stan-dev/stan/develop/src/stan/lang/function_signatures.h"
SYNTAX_FILE = "syntax/stan.vim"
STAN_ADD_FUNCTIONS = [
    "add",
    "add_unary",
    "add_unary_vectorized",
    "add_binary",
    "add_ternary",
    "add_nullary",
]

# Request Stan file
req = requests.get(FUNCTION_SIGNATURES_FILE)
if req.status_code == requests.codes.ok:
    stan_file = req.text
else:
    msg = "Could not request Stan file."
    raise RuntimeError(msg)

# Read syntax file
with open(SYNTAX_FILE, "r") as f:
    syntax_file = f.read()

# Find all functions from Stan file
add_functions = "|".join(STAN_ADD_FUNCTIONS)
regex = r"(?<=[{}]\(['\"])(\w+)(?=['\"])".format(add_functions)
stan_functions = set(re.findall(regex, stan_file))
# Remove _log functions
stan_functions = {
    function for function in stan_functions if not function.endswith("_log")
}
# Add bare distribution names
stan_functions = stan_functions | {
    function[:-4] for function in stan_functions if function.endswith("_rng")
}

regex1 = r"(?<=syntax keyword stanFunction )(.*)"
regex2 = r"(?<=syntax keyword stanConstant )(.*)"
matches = re.findall(regex1, syntax_file) + re.findall(regex2, syntax_file)

# Flatten
highlighted_functions = set([word for match in matches for word in match.split()])

missing = stan_functions - highlighted_functions
unnecessary = highlighted_functions - stan_functions

print("Missing:")
print(missing)
print()
print("Unnecessary:")
print(unnecessary)
