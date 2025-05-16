@echo off
:: Convert markdown to PDF with TOC using Pandoc and XeLaTeX

echo Generating PDF...
pandoc "NAMED_PCs_PREVIEW_TOC.md" -o "NAMED_PCs_PREVIEW_FULL.pdf" --toc --pdf-engine=xelatex

if %errorlevel% equ 0 (
    echo ✅ PDF successfully created: NAMED_PCs_PREVIEW_FULL.pdf
) else (
    echo ❌ An error occurred during PDF generation.
)

pause
