defmodule Bloglixir.PostUtils do

    def get_metadata_blob_from_post_string( post ) do
        [[ _, metadata, post_body]] = Regex.scan( ~r/\A\s*---(.*?)---(.*)\z/s, post) 
        {:ok, [ metadata, post_body] }
    end

end
