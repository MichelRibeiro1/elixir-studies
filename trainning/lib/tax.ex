defmodule Tax do
  def calculate(salary) do
    {:tax, tax} = cond do
      salary <= 2000 -> {:tax, 0}
      salary <= 3000 -> {:tax, salary * 0.05}
      salary <= 6000 -> {:tax, salary * 0.1}
      salary > 6000 -> {:tax, salary * 0.15}
    end
    IO.puts "Total on tax: #{tax}"
  end
end
