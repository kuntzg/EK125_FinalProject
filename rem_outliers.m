function ntest=rem_outliers(test)
out=isoutlier(test);
for i=1:10
    if any(out(i,:))==1
        test(i,:)=[];
    end
end
ntest=test
    