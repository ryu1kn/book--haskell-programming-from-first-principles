module Ch22Spec (spec) where

import Test.Hspec

spec :: Spec
spec =
    describe "Foo" $ do
        it "bar" $
            2 `shouldBe` 2
