library("rmarkdown")

input_notebook = "code/02_bulk_preprocessed.ipynb"

convert_ipynb(input=input_notebook, output = xfun::with_ext(input_notebook, "Rmd"))