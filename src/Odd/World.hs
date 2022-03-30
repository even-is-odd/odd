{-# LANGUAGE GADTs, DataKinds #-}

module Odd.World where

import Prelude (Eq,Read,Show(show),Maybe(Nothing),(++))

newtype World a = World a
 deriving (Eq, Read, Show)

data War = War
 deriving (Eq, Read, Show)

type WorldWar = World War

data Life = Life 
 deriving (Eq, Read, Show)

data Just a where
   Just :: War -> Just Nothing

instance Show (Just a) where
   show (Just War) = "Nothing"