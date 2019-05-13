# !/usr/bin/env python
# -*- coding: utf8 -*-

import unittest

from src.increment_string import increment_string

class TestIncrementString(unittest.TestCase):
    def test_string_without_numbers_add_one(self):
        self.assertEqual(increment_string('foo'), 'foo1')

    
