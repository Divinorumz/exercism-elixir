defmodule Secrets do
  def secret_add(secret) do
    fn anon_param ->
      secret + anon_param
    end
  end

  def secret_subtract(secret) do
    fn anon_param ->
      anon_param - secret
    end
  end

  def secret_multiply(secret) do
    fn anon_param ->
      anon_param * secret
    end
  end

  def secret_divide(secret) do
    fn anon_param ->
      div(anon_param, secret)
    end
  end

  def secret_and(secret) do
    fn anon_param ->
      Bitwise.band(secret, anon_param)
    end
  end

  def secret_xor(secret) do
    fn anon_param ->
      Bitwise.bxor(anon_param, secret)
    end
  end

  def secret_combine(secret_function1, secret_function2) do
    fn param ->
      param
      |> secret_function1.()
      |> secret_function2.()
    end
  end
end
