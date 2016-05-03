
```Haskell
{-# LANGUAGE OverloadedStrings #-}
```

```Haskell
import Data.String
```

```Haskell
import Text.Regex
instance IsString Regex where
    fromString = mkRegex
```


```Haskell
{-# FlexibleInstances #-}
```

```Haskell
import Network.URI
instance IsString (Maybe URI) where
    fromString = parseURI
```
