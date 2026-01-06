#!/bin/bash

# Create output directory and subdirectories for .aux files
mkdir -p out/kapitel

# First pdflatex pass
echo "Running first pdflatex pass..."
pdflatex -interaction=nonstopmode -output-directory=out main.tex

# Run bibtex
echo "Running bibtex..."
bibtex out/main

# Second pdflatex pass (to incorporate bibliography)
echo "Running second pdflatex pass..."
pdflatex -interaction=nonstopmode -output-directory=out main.tex

# Third pdflatex pass (to resolve all references)
echo "Running third pdflatex pass..."
pdflatex -interaction=nonstopmode -output-directory=out main.tex

# Copy final PDF
echo "Compilation complete! PDF is at: out/main.pdf"
