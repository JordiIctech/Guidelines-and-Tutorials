import unittest
import D5_Unit

from unittest.mock import patch

class TestFunctions(unittest.TestCase):
    def setUp(self):
        pass

    def tearDown(self):
        pass

    def test_adder(self):
        self.assertEqual(D5_Unit.adder(2,3),5) #(2,3),5

#----------------------------------------------------------------------------------------------------------------------------------------------
    def test_sentance(self):
        result = D5_Unit.sentence("Everyone", "party", "ma house") #("Everyone", "party", "ma house")
        self.assertEqual(result, "Everyone will go to the party at ma house.") #(result, "Everyone will go to the party at ma house.")

    def test_surface_area_cube(self):
        self.assertEqual(D5_Unit.surface_area_cube(3,1,2),22) #(3,2,1),22

    def test_registration(self):
        name = 'Handy'
        age = 18
        if age < 18:
            self.assertEqual(D5_Unit.registration(name,age),"Not old enough to register!") 
        else:
            self.assertEqual(D5_Unit.registration(name,age),(name,age)) #(name,age),(name,age)

    def test_registration2(self):
        #result = D5Units.registration("JJ",15)
        self.assertEqual(D5_Unit.registration("JJ",19),("JJ",19))
        self.assertIs(type(D5_Unit.registration("JJ",15)), str)

#----------------------------------------------------------------------------------------------------------------------------------------------



if __name__ == "__main__":
    unittest.main()