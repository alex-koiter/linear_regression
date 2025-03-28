quarto::quarto_render("linear_regression.qmd")

pagedown::chrome_print("linear_regression.html",
                       output = "linear_regression.pdf",
                       extra_args = "--font-render-hinting=none")



system(glue::glue("gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 ",
                  "-dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH ",
                  "-sOutputFile='linear_regression_sm.pdf' ",
                  "'linear_regression.pdf'"))
