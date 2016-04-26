
def fibs_rec(n)
	if n == 0
		0
	elsif n == 1
		1
	else
		p fib(n - 1) + fib(n -2)
	end
end

fibs(6)