{-# LANGUAGE ForeignFunctionInterface #-}
module Lib
    ( nsLog
    ) where
import Foreign
import Foreign.C.String

foreign import ccall safe "wrapper.h nslog"
  nsLog' :: CString -> IO ()

nsLog :: String -> IO ()
nsLog str = withCString str $ \cstr -> nsLog' cstr
