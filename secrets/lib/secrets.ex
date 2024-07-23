defmodule Secrets do
  def secret_add(a) do
    #&(&1 + secret)
    fn b -> a + b end
  end

  def secret_subtract(secret) do
    &(&1 - secret)
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    &(&1 / secret)
    |> trunc()
  end

  def secret_and(secret) do
    fn value ->
      Bitwise.band(value, secret)
    end
  end

  def secret_xor(secret) do
    fn value ->
      Bitwise.bxor(value, secret)
    end
  end

  def secret_combine(secret_function_1, secret_function_2) do
    fn value ->
    secret_function_2.(secret_function_1.(value))
    end
  end
end
