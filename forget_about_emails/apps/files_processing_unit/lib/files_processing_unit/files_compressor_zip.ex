defmodule FilesCompressor.Zip do
  @behaviour FilesCompressor

  def compress_dir(source_path, dest_path, dest_file) do
    collect_files(source_path)

    {:ok}
  end

  @spec collect_files(String.t) :: list
  defp collect_files(source_path) do
    File.ls(source_path)
      |> Enum.map(fn filename -> Path.join(source_path, filename) end)
      |> Enum.map(&String.to_char_list(&1))
  end
end
