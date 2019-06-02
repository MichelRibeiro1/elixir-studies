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

  def calculate do
    user_input = IO.gets "Type your salary: "
    case Integer.parse(user_input) do
      :error -> IO.puts "Invalid salary: #{user_input}"
      {salary, _} -> calculate(salary)
    end
  end
end
