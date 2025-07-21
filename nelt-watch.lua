local fidimon = require("fidimon")

fidimon(nil, function(file_path)
  if not file_path then
    print("Watching nelt files")
  else
    os.execute("nelua --cc=tcc nelt-compile.nelua " .. file_path)
  end
end, {
  include_file_types = { "nelt" },
  delay = 0,
})
