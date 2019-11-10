import re
from itertools import chain
import requests


# Path to stan-vim syntax file
SYNTAX_FILE = "syntax/stan.vim"

# Syntax declarations
SYNTAX_HIGHLIGHTS = [
    "syntax keyword stanFunction",
    "syntax keyword stanConstant",
    "syntax keyword stanSpecial",
]

# URL for Stan function signatures file
FUNCTION_SIGNATURES_FILE = "https://raw.githubusercontent.com/stan-dev/stan/develop/src/stan/lang/function_signatures.h"

# Functions that Stan uses to register function signatures
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

# Read stan-vim syntax file
with open(SYNTAX_FILE, "r") as f:
    syntax_file = f.read()

# Find functions declarations from Stan file
add_functions = "|".join(STAN_ADD_FUNCTIONS)
regex = r"(?<=[{}]\(['\"])(\w+)(?=['\"])".format(add_functions)
matches = set(re.findall(regex, stan_file))
stan_functions = {
    # Remove matches that end with "_log"
    match
    for match in matches
    if not match.endswith("_log")
}
stan_functions = stan_functions | {
    # Add bare distribution names
    function[:-4]
    for function in stan_functions
    if function.endswith("_rng")
}

# Find highlighted words from stan-vim syntax file
regexes = [r"(?<={} )(.*)".format(declaration) for declaration in SYNTAX_HIGHLIGHTS]
matches = list(chain(*[re.findall(regex, syntax_file) for regex in regexes]))
highlighted_functions = set(chain(*[match.split() for match in matches]))

missing = stan_functions - highlighted_functions
unnecessary = highlighted_functions - stan_functions

print("Missing:")
print(missing)
print()
print("Unnecessary:")
print(unnecessary)
