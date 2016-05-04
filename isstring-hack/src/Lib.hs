{-# LANGUAGE OverloadedStrings, FlexibleInstances #-}

module Lib where

import Data.String
import Network.URI
import Text.Regex


instance IsString (Maybe URI) where
    fromString = parseURI

instance IsString Regex where
    fromString = mkRegex

class IsLiteral a where
    fromStringRep :: String -> Either String a
