library("rmarkdown")



# find all files in current directory that end on ipynb
for (input_notebook in list.files(path=".", pattern="*.ipynb$"))
{
  #convert these files into Rmarkdown for use in RStudio
  convert_ipynb(input=input_notebook, output = xfun::with_ext(input_notebook, "Rmd"))  
}


