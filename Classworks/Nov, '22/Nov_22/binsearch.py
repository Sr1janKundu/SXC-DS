def binary_search(keys, query):
    if len(keys) == 0:
        return -1
    if keys[len(keys)//2] == query:
        return (len(keys)//2)
    elif keys[len(keys)//2] < query:
        return binary_search(keys[(len(keys)//2 + 1) : ], query)
    else:
        return binary_search(keys[ : (len(keys)//2)], query)

if __name__ == '__main__':
    num_keys = int(input())
    input_keys = list(map(int, input().split()))
    assert len(input_keys) == num_keys

    num_queries = int(input())
    input_queries = list(map(int, input().split()))
    assert len(input_queries) == num_queries

    for q in input_queries:
        print(binary_search(input_keys, q), end = ' ')