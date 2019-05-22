-- Tasty makes it easy to test your code. It is a test framework that can
-- combine many different types of tests into one suite. See its website for
-- help: <http://documentup.com/feuerbach/tasty>.
import qualified Test.Tasty
-- Hspec is one of the providers for Tasty. It provides a nice syntax for
-- writing tests. Its website has more info: <https://hspec.github.io>.
import Test.Tasty.Hspec

main :: IO ()
main = do
    test <- testSpec "tasty-tests" spec
    Test.Tasty.defaultMain test

spec :: Spec
spec = parallel $ do

  describe "POST /auth/indetity/facebook" $ do
    it "Creates a new UserId and associates it with Facebook ID based on provided facebook access token." $ do
        True `shouldBe` True

    it "Fails if given Facebook ID is already associated with an existing UserId." $ do
        True `shouldBe` True

  describe "POST /auth/indetity/email" $ do
    it "Creates a new UserId and associates it with Email based on provided magic link token." $ do
        True `shouldBe` True

    it "Fails if given Eamil is already associated with an existing UserId." $ do
        True `shouldBe` True
