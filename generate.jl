using Spider

let
  args = (source_dir="src",
          output_dir="docs",
          clear_odir=false,
          header_file="header.html",
          footer_file="footer.html")

  run_spider(BibTexRefs(),
             ArxivLinks(),
             TOC(),
             WikiLinks(),
             MathJax(),
             BackLinks(),
             ;args...)

  run(`git reset -q`)
  run(`git add docs`)
  run(`git commit -m 'Website generated'`)
end
