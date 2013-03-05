module SepulchresHelper
  def truncated_sepulchre_history sepulchre, length = 300
    truncate(strip_tags(sepulchre.history), length: length)
  end
end
