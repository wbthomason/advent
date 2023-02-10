module Common
function parselines(file_path, parser)
  map(parser, readlines(file_path))
end
end
