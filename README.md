# rollout-spice
Give your rollouts some magical spice! :sparkles:

An Interface for the much loved [https://github.com/FetLife/rollout](FetLife/rollout) gem.

As an alternative to John Allison's [https://github.com/jrallison/rollout_ui](Rollout-UI) gem

## Why this gem?

- You have a bunch of flags (> 5), they are all statically known,
- You have non-developer types, or those without console access to rollouts,
- You forget which flags are global flags, percent based flag, user based, etc,
- Easily express what flags do to other co-workers right when your looking at them.
- No more auto-save.

## How it attempts to solve

- Types of rollouts
  - Binary Rollouts (everyone or no-one)
  - Group Rollouts (only specific groups)
  - Percent Rollouts (only for a percentage of users)

**NOTE:** This does not mean to insult in any form rollout-ui gem; it is great when you need dynamic rollouts that you might not know at the time of production, or when your a small shop and can know everyone who flips the feature switches.

## Future Ideas

Other ideas (that have yet to be implemented, and are still on the thinking block)
- Handling Rollouts for multiple types
  - users, countries, locations ...
- Rollout rules
  - related rollout flags (e.g. one rollout is only valid, if another is enabled)
- Tagging
  - be able to seperate technical rollouts; from UI rollouts, etc
- Searching
- Defaults
  - have defaults in the case redis is not available (might require forking rollout gem)

if you would like to contribute, or work on any of the above, open a PR related to it.

## Thanks!
Much thanks to James Golick for the rollout gem itself, and its many contributors.

## License
MIT Licensed, see LICENSE for complete details
