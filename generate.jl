using Spider

include("plugins/sc_wikilinks.jl")

let
  args = (source_dir="src",
          output_dir="docs",
          clear_odir=false,
          header_file="header.html",
          footer_file="footer.html")

  run_spider(BibTexRefs(),
             ArxivLinks(),
             TOC(),
             SCWikiLinks(;toplevel_prefix="scnumerics"),
             MathJax(),
             BackLinks(),
             ;args...)

  run(`git reset -q`)
  run(`git add docs`)
  run(`git commit --allow-empty -m 'Website generated'`)
end
