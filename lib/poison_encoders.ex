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

defimpl Poison.Encoder, for: Dicer.Tokens.LeftParenthesis do

  def encode(_token, options) do
    Poison.Encoder.BitString.encode("(", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.RightParenthesis do

  def encode(_token, options) do
    Poison.Encoder.BitString.encode(")", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.TakeTop do

  def encode(token, options) do
    Poison.Encoder.BitString.encode("^#{token.take_num}", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.TakeBottom do

  def encode(token, options) do
    Poison.Encoder.BitString.encode("v#{token.take_num}", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.Num do

  def encode(token, options) do
    Poison.Encoder.BitString.encode("#{token.value}", options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.Dice do

  def encode(token, options) do
    text = "#{token.quantity}d#{token.sides}"

    dice_data = %{"dice" => text, "counted_values" => token.counted_values, "rejected_values" => token.rejected_values}
    Poison.Encoder.Map.encode(dice_data, options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.FudgeDice do

  def encode(token, options) do
    text = "#{token.quantity}dF"

    dice_data = %{"dice" => text, "counted_values" => token.counted_values, "rejected_values" => token.rejected_values}
    Poison.Encoder.Map.encode(dice_data, options)
  end
end

defimpl Poison.Encoder, for: Dicer.Tokens.End do

  def encode(token, options) do
    Poison.Encoder.BitString.encode("", options)
  end
end