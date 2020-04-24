import Test.Hspec
import Lib

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "Math" $ do
    it "basic" $
        1 `shouldBe` 1
