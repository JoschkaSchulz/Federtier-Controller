# frozen_string_literal: true

require 'ffi'

class KeyStateChecker
  extend FFI::Library
  ffi_lib :user32

  attach_function :GetAsyncKeyState, [:int], :short

  def f13_pressed?
    get_key_state(0x7C) != 0
  end

  def f14_pressed?
    get_key_state(0x7D) != 0
  end

  def f15_pressed?
    get_key_state(0x7E) != 0
  end

  def f16_pressed?
    get_key_state(0x7F) != 0
  end

  def f17_pressed?
    get_key_state(0x80) != 0
  end

  def f18_pressed?
    get_key_state(0x81) != 0
  end

  private 

  # Virtual Key Codes -> https://learn.microsoft.com/en-us/windows/win32/inputdev/virtual-key-codes
  def get_key_state(key)
    GetAsyncKeyState(key)
  end
end