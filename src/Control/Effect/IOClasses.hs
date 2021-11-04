{-# LANGUAGE AllowAmbiguousTypes   #-}
{-# LANGUAGE FlexibleInstances     #-}
{-# LANGUAGE GADTs                 #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE ScopedTypeVariables   #-}
{-# LANGUAGE TypeApplications      #-}
{-# LANGUAGE TypeOperators         #-}

module Control.Effect.IOClasses
  ( Algebra(..)
  , module E
  ) where

import           Control.Algebra
import           Control.Carrier.Lift
import           Control.Monad.Class.MonadAsync    as E
import           Control.Monad.Class.MonadEventlog as E
import           Control.Monad.Class.MonadFork     as E
import           Control.Monad.Class.MonadST       as E
import           Control.Monad.Class.MonadSTM      as E
import           Control.Monad.Class.MonadSay      as E
import           Control.Monad.Class.MonadThrow    as E
import           Control.Monad.Class.MonadTime     as E
import           Control.Monad.Class.MonadTimer    as E
import           Control.Monad.IOSim               as E
import           Control.Monad.ST.Lazy             as E

instance Algebra (Lift (IOSim s)) (IOSim s) where
  alg hdl (LiftWith with) = with hdl
