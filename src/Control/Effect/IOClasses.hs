{-# LANGUAGE GADTs #-}
module Control.Effect.IOClasses where

import           Control.Algebra
-- import Control.Monad.Class.MonadAsync
import           Control.Monad.Class.MonadEventlog

data Eventlog m a where
  TraceEventIO :: String -> Eventlog m ()
  TraceMarkerIO :: String -> Eventlog m ()
