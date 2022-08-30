import pytest
from Unit_D5py import is_palindrome

def test_is_palindrome_empty():
    assert is_palindrome("")

def test_is_palindrome_spaces():
    assert is_palindrome("Never odd or even") == False

def test_is_palindrome_punctuation():
    assert not is_palindrome("dod?") #Same as == False


@pytest.mark.parametrize("non_palindrome", ["Never odd or even", "Do geese see God?", "abc", "abab"])

def test_is_palindrome(non_palindrome):
    assert not is_palindrome(non_palindrome)


if __name__ == "__main__":
    pytest.main()
