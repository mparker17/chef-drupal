#!/usr/bin/env bats

@test "check changelog" {
    run grep -e 'Drupal 1.0.0, 2001-01-15' /var/www/CHANGELOG.txt
    [ "$status" -eq 0 ]
}

