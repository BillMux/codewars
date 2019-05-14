import unittest

from src.morse_decoder import decodeMorse

class TestDecodeMorse(unittest.TestCase):
    def test_dot_dash_returns_a(self):
        self.assertEqual(decodeMorse('.-'), 'A')

    def test_one_word_input(self):
        self.assertEqual(decodeMorse('- . ... -'), 'TEST')

    def test_two_word_input_with_space(self):
        self.assertEqual(decodeMorse('- . ... -  - .-- ---'), 'TEST TWO')

    def test_preceding_whitespace(self):
        self.assertEqual(decodeMorse('    - . ... -  - .... .-. . .'), 'TEST THREE')

    def test_trailing_whitespace(self):
        self.assertEqual(decodeMorse('- . ... -  ..-. --- ..- .-.    '), 'TEST FOUR')
