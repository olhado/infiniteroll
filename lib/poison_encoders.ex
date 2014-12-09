import Poison

defimpl Poison.Encoder, for: Dicer.Tokens.Plus do

  def encode(_token, options) do
    Poison.Encoder.BitString.encode("+", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.Minus do

  def encode(_token, options) do
    Poison.Encoder.BitString.encode("-", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.Multiply do

  def encode(_token, options) do
    Poison.Encoder.BitString.encode("*", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.Divide do

  def encode(_token, options) do
    Poison.Encoder.BitString.encode("/", options)
  end
end