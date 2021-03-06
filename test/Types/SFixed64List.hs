-- Generated by protobuf-simple. DO NOT EDIT!
module Types.SFixed64List where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype SFixed64List = SFixed64List
  { value :: PB.Seq PB.Int64
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default SFixed64List where
  defaultVal = SFixed64List
    { value = PB.defaultVal
    }

instance PB.Mergeable SFixed64List where
  merge a b = SFixed64List
    { value = PB.merge (value a) (value b)
    }

instance PB.Required SFixed64List where
  reqTags _ = PB.fromList []

instance PB.WireMessage SFixed64List where
  fieldToValue (PB.WireTag 1 PB.Bit64) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getSFixed64
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putSFixed64List (PB.WireTag 1 PB.Bit64) (value self)


