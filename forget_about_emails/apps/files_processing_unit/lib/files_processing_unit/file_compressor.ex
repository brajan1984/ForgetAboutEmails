defmodule FilesCompressor do
  @callback compress_dir(String.t, String.t, String.t) :: {atom()}
end
