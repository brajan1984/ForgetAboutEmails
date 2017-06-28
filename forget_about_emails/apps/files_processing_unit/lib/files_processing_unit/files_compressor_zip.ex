defmodule FilesCompressor.Zip do
  @behaviour FilesCompressor

  @doc ~S"""
  Compresses files to zip and puts it in defined directory.

  ##  Examples:
      iex> FilesCompressor.Zip.compress_dir("I:/umlet", "", "I:/zipped.zip")
      {:ok, "I:/zipped.zip"}
  """
  @spec compress_dir(String.t, String.t, String.t) :: any
  def compress_dir(source_path, dest_path, dest_file) do
    files = collect_files(source_path)

    :zip.create(dest_file, files)
  end

  @spec collect_files(String.t) :: list
  def collect_files(source_path) do
      File.ls(source_path)
      |> elem(1)
      |> Enum.map(fn filename -> Path.join(source_path, filename) end)
      |> Enum.map(&String.to_char_list(&1))
  end
end
