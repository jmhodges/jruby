require 'test/unit'
require 'java'

class TestAssertRaiseWithNativeException < Test::Unit::TestCase
  java_import('java.util.NoSuchElementException') { 'FooError' }

  def test_native_exception_with_renaming
    assert_raise(FooError) {
    raise FooError.new
    }
  end

  def test_native_exception
    assert_raise(Java::JavaUtil::MissingResourceException) {
      raise Java::JavaUtil::MissingResourceException.new('foo', 'foo', 'foo')
    }
  end
end
