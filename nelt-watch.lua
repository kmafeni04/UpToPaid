local fidimon = require("fidimon.fidimon")

fidimon(nil, function(file_path)
  if not file_path then
    os.execute("nelua --cc=tcc nelt-compile-all.nelua")
    print("Watching nelt templates")
  else
    os.execute("nelua --cc=tcc nelt-compile.nelua " .. file_path)
  end
end, {
  include_file_types = { "nelt" },
  delay = 0,
})
