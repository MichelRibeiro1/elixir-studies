defmodule MatchstickFactory do
  @spec boxes(integer()) :: :ok
  def boxes(num) do
    big = get_bigs(num)
    rem_until_big = num - (50 * big)
    med = get_meds(rem_until_big)
    rem_until_med = rem_until_big - (20 * med)
    min = get_min(rem_until_med)

    remainer = rem_until_med - (min * 5)

    IO.puts "big: #{big}, med: #{med}, min: #{min}, remaining_matchsticks: #{remainer}"
  end

  @spec get_bigs(integer()) :: integer()
  def get_bigs(num) do
    if num >= 50 do
      div(num, 50)
    else
      0
    end
  end

  @spec get_meds(integer()) :: integer()
  def get_meds(num) do
    if num >= 20 do
      div(num, 20)
    else
      0
    end
  end

  @spec get_min(integer()) :: integer()
  def get_min(num) do
    if num >= 5 do
      div(num, 5)
    else
      0
    end
  end
end
