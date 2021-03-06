-- Generated by protobuf-simple. DO NOT EDIT!
module Types.SFixed32List where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB

newtype SFixed32List = SFixed32List
  { value :: PB.Seq PB.Int32
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default SFixed32List where
  defaultVal = SFixed32List
    { value = PB.defaultVal
    }

instance PB.Mergeable SFixed32List where
  merge a b = SFixed32List
    { value = PB.merge (value a) (value b)
    }

instance PB.Required SFixed32List where
  reqTags _ = PB.fromList []

instance PB.WireMessage SFixed32List where
  fieldToValue (PB.WireTag 1 PB.Bit32) self = (\v -> self{value = PB.append (value self) v}) <$> PB.getSFixed32
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putSFixed32List (PB.WireTag 1 PB.Bit32) (value self)


