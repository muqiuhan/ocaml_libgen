let _test_dirname =
  let _success =
    let dirname_ret = Libgen.dirname "/home/muqiu-han/xxx.ml" in
    if String.equal dirname_ret "/home/muqiu"
    then print_endline {|o- test (Libgen "/home/muqiu-han/xxx.ml")...ok |}
    else
      print_endline
        ({|o- test (Libgen "/home/muqiu-han/xxx.ml")...failure | Libgen.dirname "/home/muqiu-han/xxx.ml" = |}
         ^ dirname_ret)
  in
  let _failure =
    let dirname_ret = Libgen.dirname "xxx.ml" in
    if String.equal dirname_ret "."
    then print_endline {|o- test (Libgen.dirname "xxx.ml")...ok!!!|}
    else
      print_endline
        ({|o- test (Libgen.dirname "xxx.ml")...failure | Libgen.dirname "xxx.ml" = " |} ^ dirname_ret)
  in
  ()
;;

let _test_xpg_basename =
  let _success =
    let xpg_basename_ret = Libgen.xpg_basename "/home/muqiu-han/xxx.ml" in
    if String.equal xpg_basename_ret "/home/muqiu"
    then print_endline {|o- test (Libgen.xpg_basename "/home/muqiu-han/xxx.ml")...ok |}
    else
      print_endline
        ({|o- test (Libgen.xpg_basename "/home/muqiu-han/xxx.ml")...failure | => |}
         ^ xpg_basename_ret)
  in
  let _failure =
    let xpg_basename_ret = Libgen.xpg_basename "xxx.ml" in
    if String.equal xpg_basename_ret "."
    then print_endline {|o- test (Libgen.xpg_basename "xxx.ml")...ok|}
    else
      print_endline
        ({|o- test (Libgen.xpg_basename "xxx.ml")...failure | => |}
         ^ xpg_basename_ret)
  in
  ()
;;
