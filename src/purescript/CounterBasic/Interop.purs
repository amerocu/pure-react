module CounterBasic.Interop where

import Prelude

import CounterBasic (Props, counter)
import Data.Maybe (fromMaybe)
import Data.Nullable (Nullable, toMaybe)
import React.Basic (JSX)

type JSProps = { label :: Nullable String }

jsPropsToProps :: JSProps -> Props
jsPropsToProps { label } = { label: fromMaybe "Count" $ toMaybe label }

jsCounter :: JSProps -> JSX
jsCounter = counter <<< jsPropsToProps