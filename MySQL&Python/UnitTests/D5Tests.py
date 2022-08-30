import unittest
import D5Units

class TestFunctions(unittest.TestCase):
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_adder(self):
        self.assertEqual(D5Units.adder(2,3),5)


if __name__ == "__main__":
    unittest.main()