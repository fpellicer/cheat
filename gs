---
tags: [ interpreter ]
---
# To reduce the size of a pdf file:
gs -dBATCH -dNOPAUSE -q -sDEVICE=pdfwrite -sOutputFile=output.pdf input.pdf

# To reduce the size of a pdf file (other):
gs -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sDEVICE=pdfwrite -sOutputFile=out.pdf in.pdf

# To merge multiple pdf files
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sOutputFile=final.pdf pdf1.pdf pdf2.pdf pdf3.pdf pdfN.pdf

# -dPDFSETTINGS parameters
#/screen    Lower quality and smaller size (72 dpi).
#/ebook     Better quality, slightly larger size (150 dpi).
#/prepress  Higher size and quality (300 dpi).
#/printer   Printer type quality (300 dpi).
#/default   Useful for multiple purposes. Large PDFs.
