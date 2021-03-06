-- Generated by protobuf-simple. DO NOT EDIT!
module Types.EnumMsg where

import Control.Applicative ((<$>))
import Prelude ()
import qualified Data.ProtoBufInt as PB
import qualified Types.Enum

newtype EnumMsg = EnumMsg
  { value :: Types.Enum.Enum
  } deriving (PB.Show, PB.Eq, PB.Ord)

instance PB.Default EnumMsg where
  defaultVal = EnumMsg
    { value = PB.defaultVal
    }

instance PB.Mergeable EnumMsg where
  merge a b = EnumMsg
    { value = PB.merge (value a) (value b)
    }

instance PB.Required EnumMsg where
  reqTags _ = PB.fromList [PB.WireTag 1 PB.VarInt]

instance PB.WireMessage EnumMsg where
  fieldToValue (PB.WireTag 1 PB.VarInt) self = (\v -> self{value = PB.merge (value self) v}) <$> PB.getEnum
  fieldToValue tag self = PB.getUnknown tag self

  messageToFields self = do
    PB.putEnum (PB.WireTag 1 PB.VarInt) (value self)


