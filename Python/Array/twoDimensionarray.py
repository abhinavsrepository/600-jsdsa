import numpy as np
twoDArray = np.array([[1,2,3,4],[1,2,3,4],[1,2,3,4]])
print(twoDArray)
newTwoDArray = np.insert(twoDArray,0 ,[[1,2,3,4]],axis=1)
print(newTwoDArray)