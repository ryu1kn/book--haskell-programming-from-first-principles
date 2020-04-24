import Test.Hspec
import Lib
import qualified Ch22Spec

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
    describe "Math" $ do
        it "basic" $
            1 `shouldBe` 1

    Ch22Spec.spec
