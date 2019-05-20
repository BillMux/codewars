from src.move_zeros import *

import unittest

class TestMoveZeros(unittest.TestCase):
    def test_length_two_move_zero_back(self):
        self.assertEqual(move_zeros([0, 1]), [1, 0])

    def test_length_ten(self):
        self.assertEqual(
            move_zeros([1, 2, 0, 1, 0, 1, 0, 3, 0, 1]),
            [1, 2, 1, 1, 3, 1, 0, 0, 0, 0]
        )

    def test_long_list(self):
        self.assertEqual(
                move_zeros([9,0.0,0,9,1,2,0,1,0,1,0.0,3,0,1,9,0,0,0,0,9]),
                [9,9,1,2,1,1,3,1,9,9,0,0,0,0,0,0,0,0,0,0]
            )

    def test_list_with_strings(self):
        self.assertEqual(
            move_zeros(["a",0,0,"b","c","d",0,1,0,1,0,3,0,1,9,0,0,0,0,9]),
            ["a","b","c","d",1,1,3,1,9,9,0,0,0,0,0,0,0,0,0,0]
        )

    def test_with_other_objects(self):
        self.assertEqual(
            move_zeros(["a",0,0,"b",None,"c","d",0,1,False,0,1,0,3,[],0,1,9,0,0,{},0,0,9]),
            ["a","b",None,"c","d",1,False,1,3,[],1,9,{},9,0,0,0,0,0,0,0,0,0,0]
        )
