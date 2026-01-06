# Study Project II: Network Interaction in Go

Continuation and Expansion of: Graphical Representation of the Reader-Writer Problem

## Authors

- Alexander Betke
- Theo Leuthardt

**Academic Year:** 2023
**University:** Hochschule für Wirtschaft und Recht Berlin (Berlin School of Economics and Law)
**Department:** Dual Studies Business · Technology
**Program:** Computer Science
**Supervisor:** (Prof. Dr.) Arthur Zimmermann

## About the Project

This study project explores network interaction in the Go programming language, with a particular focus on the graphical representation of the classic reader-writer problem in computer science.

## Prerequisites

To compile the LaTeX document, you will need:

- A complete LaTeX distribution (e.g., TeX Live, MiKTeX)
- `pdflatex`
- `bibtex`
- Bash (for the compilation script)

## Local Compilation

### Using the Compilation Script

The project includes a Bash script for automatic compilation:

```bash
./compile.sh
```

The script automatically performs the necessary compilation steps:
1. Creates the output directory `out/`
2. Runs the first `pdflatex` pass
3. Processes the bibliography with `bibtex`
4. Runs two additional `pdflatex` passes (for references and cross-links)

The final PDF will be located at: `out/main.pdf`

### Manual Compilation

If you prefer to compile manually:

```bash
mkdir -p out/kapitel
pdflatex -interaction=nonstopmode -output-directory=out main.tex
bibtex out/main
pdflatex -interaction=nonstopmode -output-directory=out main.tex
pdflatex -interaction=nonstopmode -output-directory=out main.tex
```

## Automatic Compilation via GitHub Actions

The repository contains a GitHub Actions workflow that automatically compiles the document and publishes it as a release.

### Triggering the Workflow Manually

1. Go to the "Actions" tab in GitHub
2. Select the workflow "Compile LaTeX and Create Release"
3. Click "Run workflow"

The workflow automatically creates:
- A new release with timestamp
- The compiled PDF as a release asset
- An artifact for download

## Notes

- The thesis is written in German
- Uses the scrbook document class from KOMA-Script
- Includes specially customized code listing styles for various languages (especially Go)
- Uses a sans-serif font as the main typeface
- Compiled files in the `out/` directory are not uploaded to the repository

## Troubleshooting

### Missing Packages

If you encounter error messages about missing packages during compilation, install them using your LaTeX package manager:

- TeX Live: `tlmgr install <packagename>`
- MiKTeX: Packages are usually installed automatically

### Encoding Issues

The document uses UTF-8 encoding. Make sure your editor is also set to UTF-8.

## License

This project is an academic work of the Hochschule für Wirtschaft und Recht Berlin.
