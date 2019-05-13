import unittest

from src.name_list import name_list

class TestNameList(unittest.TestCase):
    def test_connection(self):
        self.assertEqual(name_list(True), True)
