module Ch22Spec (spec) where

import Data.Char
import Test.Hspec

spec :: Spec
spec =
    describe "Compose" $ do
        it "composed" $
            composed "Julie" `shouldBe` "EILUJ"

        it "fmapped" $
            fmapped "Julie" `shouldBe` "EILUJ"

        it "tupled" $
            tupled "Julie" `shouldBe` ("eiluJ", "JULIE")

cap :: [Char] -> [Char]
cap xs = map toUpper xs

rev :: [Char] -> [Char]
rev xs = reverse xs

composed :: [Char] -> [Char]
composed = cap . rev

fmapped :: [Char] -> [Char]
fmapped = fmap rev cap

tupled :: [Char] -> ([Char], [Char])
tupled = (,) <$> rev <*> cap
