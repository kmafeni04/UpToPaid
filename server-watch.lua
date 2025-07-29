local fidimon = require("fidimon.fidimon")

fidimon(nil, function(file_path)
  os.execute("killall app; nelua --cc=tcc app.nelua &")
end, {
  include_file_types = { "nelua" },
  delay = 4,
})
