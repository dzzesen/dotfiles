from ptpython.layout import CompletionVisualisation


def configure(repl):
    repl.completion_visualisation = CompletionVisualisation.TOOLBAR
    repl.show_line_numbers = True
    repl.enable_fuzzy_completion = True
    repl.enable_dictionary_completion = True
    repl.enable_auto_suggest = True
    repl.vi_mode = True
    repl.use_code_colorscheme("nord")
    repl.max_brightness = 0.7
