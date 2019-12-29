module Orchard.Codecs exposing (encode, decode)

{-| This module provides the public api for serializing and deserializing almost any Elm data type via a custom binary protocol.

@docs encode, decode

Limitations:

  - The binary format relies heavily on the type structure. If the encoded type, or any of its member types changes in any way, the decoder might either fail to decode or decode to the wrong value.

-}

import Bytes as B
import Bytes.Decode as D exposing (Decoder)
import Bytes.Encode as E exposing (Encoder)


{-| Encode any type into a densely packed binary protocol.
-}
encode : a -> B.Bytes
encode _ =
    -- real implementation is provided by the compiler
    E.encode (E.sequence [])


{-| Decode values encoded by the `encode` function.
-}
decode : B.Bytes -> Maybe a
decode _ =
    -- real implementation is provided by the compiler
    Nothing
