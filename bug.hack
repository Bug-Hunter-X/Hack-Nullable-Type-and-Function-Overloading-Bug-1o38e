function foo(x: ?int): int {
  if (x === null) {
    return 42;
  } else {
    return x + 1;
  }
}

function bar(): void {
  $x = null;
  echo foo($x);
}

function baz(): void {
  $x = 1;
  echo foo($x);
}

bar(); // outputs 42
baz(); // outputs 2

//This is correct

function foo2(x: int): int {
  return x + 1;
}

function bar2(): void {
  $x = 1;
  echo foo2($x);
}

bar2();// outputs 2