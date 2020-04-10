{-# LANGUAGE ScopedTypeVariables #-}
module LibSpec (spec) where

    import    Lib              (square, ggt)
    import    Test.Hspec
    import    Test.QuickCheck

    spec :: Spec
    spec = do
        describe "square" $ do
            it "calculates the square of 5.3" $
                square 5.3 `shouldBe` 28.09
            it "calculates the square of an arbitrary integer" $
                property $ \(n::Integer) -> square n == n*n
            it "calculates the square of an arbitrary double" $
                property $ \(n::Double) -> square n == n*n

        describe "ggt" $ do
            it "calculates the gcd of 3 and 9" $
                ggt 3 9 `shouldBe` 3
            it "calculates the gcd of 0 and 4" $
                ggt 0 4 `shouldBe` 4
            it "calculates the gcd of different numbers" $
                property $ \a b -> if a == 0 && b == 0
                    then ggt a b == 0
                    else (a `mod` ggt a b == 0) && (b `mod` ggt a b == 0)
            it "calculates the gcd of different numbers and compares with gcd function" $
                property $ \a b -> ggt a b == gcd a b
                    