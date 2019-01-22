# xaringan-css

Personal customisations for [xaringan](https://github.com/yihui/xaringan) based slides.

After writing basically the same `custom.css` for two different presentations, I decided it would be better to factor out these customisations into its own repo and include it in slide repos as a submodule.


## How to use

1. Clone this repo to a subdirectory of where your xaringan slides are

    ```console
    git clone https://github.com/janusvm/xaringan-css.git css
    ```

    or, if your slides are already in a git repo, add it as a submodule

    ```console
    git submodule add https://github.com/janusvm/xaringan-css.git css
    ```

2. In the YAML front matter of your slides, put the following settings:

    ```yaml
    output:
      xaringan::moon_reader:
        css: [default, css/janusvm.css, css/janusvm-fonts.css]
        nature:
          highlightStyle: none
    ```

    The `highlightStyle` needs to be `none`, because it's manually defined by CSS


## Features

- A colour theme based on the [Nord](https://github.com/arcticicestudio/nord) palettes
- Syntax highlighting in Nord colours (CSS from [highlight.js](https://github.com/highlightjs/highlight.js))
- The [Iosevka SS04](https://github.com/be5invis/Iosevka) font for monospace
- Custom slide classes `polarnight`, `snowstorm`, and `aurora`
- Blockquotes with special formatting for attribution
