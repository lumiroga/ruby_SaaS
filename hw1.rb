def sum (arr)
    suma = 0
    arr.each {|x| suma+=x }
    suma
end

#print sum([1,2,3,4,4,4])

def max_2_sum(arr)
  
    ord = arr.sort{|a,b| b<=>a }
   return (ord[0] + ord[1] ) if ord.length >1
   return (ord[0]) if ord.length > 0
   0
end

#puts max_2_sum([1,2,7,5,3,123])
#puts max_2_sum([2])
#puts max_2_sum([])

def sum_to_n?(arr,n)
    false if arr.length < 2
    for e in arr
        for a in arr
            return true if e+a == n and e!=a
        end
    end
    false
end


puts max_2_sum([1,2,3,3])