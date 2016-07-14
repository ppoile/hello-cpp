import subprocess
import unittest

class Test(unittest.TestCase):
    """The one and only test case"""
    def test_response(self):
        """test the response of the program"""
        self.assertEqual(
            subprocess.check_output(["./hello-cpp"]),
            "Hello world.\n")

    def test_help_response(self):
        """test the program's help"""
        self.assertEqual(
            subprocess.check_output(["./hello-cpp", "--help"]),
            "Hello world.\n")

if __name__ == '__main__':
    unittest.main()
