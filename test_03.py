def is_perfect_square(n: int) -> bool:
    i = 1
    while True:
        if (i * i) < n:
            pass
        elif (i * i) == n:
            return True
        elif (i * i) > n:
            return False
        i += 1


def sumOfPerfectSquares(l: list[int]) -> int:
    total = 0
    for val in l:
        if is_perfect_square(val):
            total += val

    return total


def main() -> None:
    print(sumOfPerfectSquares([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]))


if __name__ == '__main__':
    main()

# sumOfPerfectSquares([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) => 14
