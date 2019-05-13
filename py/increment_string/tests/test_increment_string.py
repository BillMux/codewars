import unittest

from src.increment_string import increment_string

class TestIncrementString(unittest.TestCase):
    def test_string_without_numbers_add_one(self):
        self.assertEqual(increment_string('foo'), 'foo1')

    def test_string_with_one_digit_number_increments_properly(self):
        self.assertEqual(increment_string('bar1'), 'bar2')
        self.assertEqual(increment_string('foobar3'), 'foobar4')

    def test_string_with_two_digit_number_increments_properly(self):
        self.assertEqual(increment_string('hello world12'), 'hello world13')
        self.assertEqual(increment_string('hello world19'), 'hello world20')

    def test_string_with_three_digit_number_increments_properly(self):
        self.assertEqual(increment_string('hello world123'), 'hello world124')
        self.assertEqual(increment_string('hello world999'), 'hello world1000')

    def test_numbers_in_middle_do_not_confuse_function(self):
        self.assertEqual(increment_string('hell0 world999'), 'hell0 world1000')

    def test_numbers_beginning_with_zeroes(self):
        self.assertEqual(increment_string('hell0 world01'), 'hell0 world02')
        self.assertEqual(increment_string('hell0 world099'), 'hell0 world100')

    def test_string_ending_with_multiple_zeroes(self):
        self.assertEqual(increment_string('hell0 world00'), 'hell0 world01')
        self.assertEqual(increment_string('hell0 world000'), 'hell0 world001')

    def test_works_with_empty_strings(self):
        self.assertEqual(increment_string(''), '1')
