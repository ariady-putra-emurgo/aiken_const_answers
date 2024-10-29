use aiken/collection/list
use modules/constants

test int() {
  constants.posix_time == 1928374650000
}

test bytearray() {
  constants.campaign_name == "My Campaign"
}

test bool() {
  constants.yes || constants.no
}

test tuple() {
  and {
    constants.owner.1st == #"00000000000000000000000000000000000000000000000000000056",
    constants.owner.2nd == 2_000_000,
    constants.owner.3rd,
  }
}

test list() {
  // We can also use `expect` here. See: https://aiken-lang.org/language-tour/control-flow#expect
  expect [_, [_, _] as sub_settings, ..] = constants.settings
  sub_settings |> list.all(fn(setting) { setting })
}
