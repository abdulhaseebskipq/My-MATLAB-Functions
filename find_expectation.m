function [exp]=find_expectation(rp,pdf,rv,ll,ul)
exp=int(rp*pdf,rv,ll,ul);
end
