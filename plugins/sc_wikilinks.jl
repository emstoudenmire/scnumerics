export SCWikiLinks

struct SCWikiLinks
  toplevel_prefix::String

  function SCWikiLinks(;toplevel_prefix="")
    return new(toplevel_prefix)
  end
end

function Spider.process_source!(W::SCWikiLinks,
                                source::AbstractString,
                                fileinfo::FileInfo;
                                args...)
  sdir = fileinfo["source_dir"]
  sfname = fileinfo["source_filename"]
  prefix = W.toplevel_prefix
  link_re = r"\[\[(.+?)\|(.*?)\]\]"
  sub_re = r"(.*?)(#.*)"
  missing_links = String[]
  res = ""
  pos = 1
  match = false
  for m in eachmatch(link_re,source)
    match = true
    res *= source[pos:m.offset-1]
    # target is what to put into href
    target = convert(String,m.captures[2])

    #If link has a "#" in it, split into target and sublink
    sublink = ""
    for sm in eachmatch(sub_re,target)
      target = convert(String,sm.captures[1])
      sublink = convert(String,sm.captures[2])
    end

    if isdir("$sdir/"*target)
      res *= "["*m.captures[1]*"](/$prefix/"*target*"/$sublink)"
    elseif isfile("$sdir/"*target*".md")
      res *= "["*m.captures[1]*"](/$prefix/"*target*".html$sublink)"
    else
      res *= "["*m.captures[1]*"](unknown_file)"
      push!(missing_links,target)
    end
    pos = m.offset+length(m.match)
  end
  if length(missing_links) > 0
    println("Missing/Incorrect Wiki Links in File $sfname:")
    for link in missing_links
      println("  $link")
    end
  end
  if !match 
    return source 
  else
    res *= source[pos:end]
  end
  return res
end
