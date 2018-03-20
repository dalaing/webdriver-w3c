module Main where

import System.Environment

import Test.Tasty

import Web.Api.Http.Effects.Test
import Web.Api.WebDriver.Monad.Test
import Web.Api.WebDriver.Types.Test

main :: IO ()
main = do

  putStrLn ""
  putStrLn "\x1b[1;34m      ___  __   __   __          ___  __           __   __     ___  ___  __  ___ \x1b[0;39;49m"
  putStrLn "\x1b[1;34m|  | |__  |__) |  \\ |__) | \\  / |__  |__) __ |  | '__\\ /  ` __  |  |__  /__`  |  \x1b[0;39;49m"
  putStrLn "\x1b[1;34m|/\\| |___ |__) |__/ |  \\ |  \\/  |___ |  \\    |/\\| .__/ \\__,     |  |___ .__/  |  \x1b[0;39;49m"
  putStrLn "\x1b[1;34m                                                                                 \x1b[0;39;49m"

  setEnv "TASTY_NUM_THREADS" "1" -- needed for live tests
  defaultMain $ testGroup "All Tests"
    [ Web.Api.Http.Effects.Test.tests
    , Web.Api.WebDriver.Monad.Test.tests
    , Web.Api.WebDriver.Types.Test.tests
    ]