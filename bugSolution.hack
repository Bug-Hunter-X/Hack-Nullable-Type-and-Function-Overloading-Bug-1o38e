//This is a correct version
function foo(x: ?int): int {
  if ($x === null) {
    return 42;
  } else {
    return $x + 1;
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

bar();// outputs 42
baz();// outputs 2

//Alternative Solution, more concise
function foo2(x: ?int): int {
  return $x === null ? 42 : $x + 1;
}

function bar2(): void {
  $x = null;
  echo foo2($x);
}

function baz2(): void {
  $x = 1;
  echo foo2($x);
}

bar2();// outputs 42
baz2();// outputs 2