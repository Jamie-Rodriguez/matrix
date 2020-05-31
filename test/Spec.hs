import Test.HUnit
import Lib


test2x2dot2x2 = TestCase (assertEqual
        "Test 2x2 matrix multiplied by a 2x2 matrix"
        [[19, 22],[43, 50]]
        (twoDMultiply [[1, 2],[3, 4]] [[5, 6],[7, 8]]))


test2x3dot3x2 = TestCase (assertEqual
        "Test 2x3 matrix multiplied by a 3x2 matrix"
        [[58, 64], [139, 154]]
        (twoDMultiply [[1, 2, 3], [4, 5, 6]] [[7, 8], [9, 10], [11, 12]]))


tests = TestList [test2x2dot2x2, test2x3dot3x2]

main :: IO Counts
main = runTestTT tests
