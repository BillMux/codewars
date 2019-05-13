import unittest

from src.name_list import name_list

class TestNameList(unittest.TestCase):
    def test_empty_input(self):
        self.assertEqual(name_list([]), '')

    def test_single_length_hash(self):
        self.assertEqual(name_list([{'name': 'Bart'}]), 'Bart')

    def test_hash_length_two(self):
        self.assertEqual(name_list(
        [
            {'name': 'Bart'}, {'name': 'Lisa'}
        ]),
        'Bart & Lisa')

    def test_length_three(self):
        self.assertEqual(name_list(
        [
            {'name': 'Homer'}, {'name': 'Bart'}, {'name': 'Lisa'}
        ]),
        'Homer, Bart & Lisa')

    def test_multiple_names(self):
        self.assertEqual(name_list(
        [
            {'name': 'Abe'},
            {'name': 'Homer'},
            {'name': 'Marge'},
            {'name': 'Bart'},
            {'name': 'Lisa'},
            {'name': 'Maggie'}
        ]),
        'Abe, Homer, Marge, Bart, Lisa & Maggie')
