## To reproduce
1) Run `spinach`. All 9 scenarios are run

```ruby
$ spinach
WARN: Unresolved specs during Gem::Specification.reset:
      colorize (>= 0)
      json (>= 0)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.

Feature: Test being skipped when indentation is wrong

  Scenario: Scenario A
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario B
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario C
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario D
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario E
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario F
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario G
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Scenario H
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

  Scenario: Improper indentation - steps aligned with scenario2
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

Steps Summary: (18) Successful, (0) Pending, (0) Undefined, (0) Failed, (0) Error

Finished in 3.620302 seconds
Run options: --seed 59827

# Running:



Finished in 0.005256s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
```

2) Run `parallel_spinach features --group-by scenarios`. Only 4 scenarios are run (B, C, D, E)

```ruby
$ parallel_spinach features --group-by scenarios
4 processes for 9 scenarios, ~ 2 scenarios per process

Feature: Test being skipped when indentation is wrong

  Scenario: Scenario C

Feature: Test being skipped when indentation is wrong

  Scenario: Scenario D

Feature: Test being skipped when indentation is wrong

  Scenario: Scenario B

Feature: Test being skipped when indentation is wrong

  Scenario: Scenario E
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

Steps Summary: (2) Successful, (0) Pending, (0) Undefined, (0) Failed, (0) Error

Finished in 4.215832 seconds
Run options: --seed 43838

# Running:



Finished in 0.007230s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

Steps Summary: (2) Successful, (0) Pending, (0) Undefined, (0) Failed, (0) Error

Finished in 4.148483 seconds
Run options: --seed 27368

# Running:



Finished in 0.005596s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

Steps Summary: (2) Successful, (0) Pending, (0) Undefined, (0) Failed, (0) Error

Finished in 4.314616 seconds
Run options: --seed 30464

# Running:



Finished in 0.004766s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
    ✔  When I visit the root path      # features/steps/test_being_skipped_when_indentation_is_wrong.rb:2
    ✔  Then I should be greeted        # features/steps/test_being_skipped_when_indentation_is_wrong.rb:6

Steps Summary: (2) Successful, (0) Pending, (0) Undefined, (0) Failed, (0) Error

Finished in 4.392027 seconds
Run options: --seed 22020

# Running:



Finished in 0.004624s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips



Took 10.674182 seconds

```

