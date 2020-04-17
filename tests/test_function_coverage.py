import re
from itertools import chain
import requests


# Path to stan-vim syntax file
SYNTAX_FILE = "syntax/stan.vim"

# Syntax declarations
SYNTAX_HIGHLIGHTS = [
    "syntax keyword stanConstant",
    "syntax keyword stanException",
    "syntax keyword stanFunction",
    "syntax keyword stanKeyword",
    "syntax keyword stanSpecial",
]

# URL for Stan documentation
DOCUMENTATION_URLS = [
    "https://raw.githubusercontent.com/stan-dev/docs/master/src/functions-reference/"
    + filename
    for filename in [
        "array_operations.Rmd",
        "binary_distributions.Rmd",
        "bounded_continuous_distributions.Rmd",
        "bounded_discrete_distributions.Rmd",
        "circular_distributions.Rmd",
        "continuous_distributions_on_[0_1].Rmd",
        "correlation_matrix_distributions.Rmd",
        "covariance_matrix_distributions.Rmd",
        "distributions_over_unbounded_vectors.Rmd",
        "higher-order_functions.Rmd",
        "integer-valued_basic_functions.Rmd",
        "matrix_operations.Rmd",
        "mixed_operations.Rmd",
        "multivariate_discrete_distributions.Rmd",
        "positive_continuous_distributions.Rmd",
        "positive_lower-bounded_distributions.Rmd",
        "real-valued_basic_functions.Rmd",
        "simplex_distributions.Rmd",
        "sparse_matrix_operations.Rmd",
        "unbounded_continuous_distributions.Rmd",
        "unbounded_discrete_distributions.Rmd",
        "void_functions.Rmd",
    ]
]

# Request Stan files
stan_docs = []
for url in DOCUMENTATION_URLS:
    req = requests.get(url)
    if req.status_code == requests.codes.ok:
        stan_docs.append(req.text)
    else:
        msg = "Could not request Stan file."
        raise RuntimeError(msg)
stan_docs = "\n".join(stan_docs)

# Read stan-vim syntax file
with open(SYNTAX_FILE, "r") as f:
    syntax_file = f.read()

# Find functions declarations from Stan file
regex = r"\*\*\`([a-zA-Z0-9_]+)\`\*\*"
stan_functions = set(re.findall(regex, stan_docs))

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

# Only fail test if some documented functions are not highlighted.
if missing:
    exit(1)
