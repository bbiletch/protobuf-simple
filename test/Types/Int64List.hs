-- Generated by protobuf-simple. DO NOT EDIT!
module Types.Int64List where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype Int64List = Int64List
  { value :: PB.Seq PB.Int64
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default Int64List where
  defaultVal = Int64List
    { value = PB.defaultVal
    }

instance PB.Mergeable Int64List where
  merge a b = Int64List
    { value = PB.merge (value a) (value b)
    }

instance PB.Required Int64List where
  reqTags _ = PB.fromList []

instance PB.WireMessage Int64List where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getInt64
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putInt64List (PB.WireTag 1 PB.VarInt) (value self)


