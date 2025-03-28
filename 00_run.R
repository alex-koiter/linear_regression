quarto::quarto_render("linear_regression.qmd", output_file = "linear_regression.html",
                      cache_refresh = TRUE,
                      execute_params = list(answers = "visible"))

quarto::quarto_render("linear_regression.qmd", output_file = "index.html",  # So is main page
                      cache_refresh = TRUE)

pagedown::chrome_print("linear_regression.html",
                       output = "linear_regression.pdf",
                       extra_args = "--font-render-hinting=none")

file.remove("linear_regression.html")

