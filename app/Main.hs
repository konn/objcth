{-# LANGUAGE TemplateHaskell #-}
module Main where

import Lib

$(return [])

main :: IO ()
main = nsLog "foo!"
