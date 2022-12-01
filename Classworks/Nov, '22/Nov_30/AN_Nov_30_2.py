import numpy as np
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = np.array(a)
print(f"a = {a}")
print(f"b = {b}")
c = b.reshape(3, 3)
print(f"c = {c}")
d = np.array([10, 11, 12, 13, 14, 15, 16, 17, 18])
e = d.reshape(3, 3)
print(f"d = {d}")
print(f"e = {e}")
p = c.dot(e)
q = np.dot(c, e)
r = c*e
print(f"p = {p}, q = {q}, r = {r}")

t = np.array([1, 2, 3, 4, 5])
sd1 = np.std(t)
print(f"sd({t}) = {sd1}")
print(f"mean({t}) = {np.mean(t)}")

a1 = np.array([5,1,1,1,5,1,1,1,5]).reshape(3, 3)
print(a1)

a2 = np.array([7, 7, 7]).reshape(3, 1)
print(a2)

from numpy.linalg import inv
a3 = inv(np.matrix(a1))

#print(f"Sol of a1x = a2 is: {np.cross(a2, a3)}")