import unittest

from src.validate import *

class TestValidate(unittest.TestCase):
    def test_invalid_number(self):
        assert validate(123) == False
        assert validate(1) == False

    def test_valid_number(self):
        assert validate(2121) == True
        assert validate(1230) == True

    def test_numbers_with_high_digits(self):
        assert validate(91) == True

    def test_longer_numbers_with_high_digits(self):
        assert validate(8675309) == False
