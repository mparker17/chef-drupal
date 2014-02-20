#!/usr/bin/env bats

@test "check that the git cookbook installed correctly" {
    run which git
    [ "$status" -eq 0 ]
}

