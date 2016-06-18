# syntastic-grammar-checkers
A collection of checkers for grammar and style checking in Syntastic, to be used with latex (via LanguageTool)

## Requirements
* [language-check](https://github.com/myint/language-check) - a Python wrapper for the LanguageTool grammar checker (built-in)

## Suggested Syntastic Settings
```
let g:syntastic_tex_checkers = ['lacheck', 'chktex', 'language_check']
let g:syntastic_tex_language_check_args = '--language=en-US --disable=WHITESPACE_RULE,'
    \ . 'MORFOLOGIK_RULE_EN_US,EN_QUOTES,COMMA_PARENTHESIS_WHITESPACE,CURRENCY,EN_UNPAIRED_BRACKETS'
```

