# Testing this cookbook

If you're making changes to this cookbook, please run the following tests before committing:

    bundle exec rubocop
    bundle exec foodcritic -f any .

... you may want to consider adding these commands to the end of `.git/hooks/pre-commit` so Git runs them automatically.

Before making a pull-request, please also run:

    bundle exec kitchen test

... to make sure that the cookbook runs correctly and the tests still work.

If you're adding a feature, please also add kitchen tests.
