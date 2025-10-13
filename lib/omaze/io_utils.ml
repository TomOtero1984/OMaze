let ensure_dir path =
  if not (Sys.file_exists path) then
    let rec mkdir_recursive p =
      if p = "" || Sys.file_exists p then () else begin
        mkdir_recursive (Filename.dirname p);
        Unix.mkdir p 0o755
      end
    in
    mkdir_recursive path
