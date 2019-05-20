from src.move_zeros import *

import unittest

class TestMoveZeros(unittest.TestCase):
    def test_connection(self):
        self.assertEqual(move_zeros(), 0)
