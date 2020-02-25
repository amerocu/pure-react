module CounterBasic.Interop where

import Prelude
import CounterBasic (CounterType(..), Props, component, initialState, render, counterTypeFromString)
import Data.Maybe (fromMaybe)
import Data.Nullable (Nullable, toMaybe)
import Effect.Uncurried (EffectFn1, runEffectFn1)
import React.Basic (ReactComponent, toReactComponent)

type JSProps
  = { label :: Nullable String
    , onClick :: Nullable (EffectFn1 Int Unit)
    , counterType :: Nullable String
    }

jsPropsToProps :: JSProps -> Props
jsPropsToProps { label, onClick, counterType } =
  { label: fromMaybe "Count" $ toMaybe label
  , onClick: fromMaybe mempty $ map runEffectFn1 $ toMaybe onClick
  , counterType: fromMaybe Increment $ counterTypeFromString =<< toMaybe counterType
  }

jsCounter :: ReactComponent JSProps
jsCounter = toReactComponent jsPropsToProps component { initialState, render }
