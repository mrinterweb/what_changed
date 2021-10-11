# WhatChanged

Some projects require a lot of work to manually run a full regression test for each release. One way to reduce that burden is to run partial regression tests instead of full regression. The hard part is knowing which parts of the application should be tested in a release.

The goal of this is to provide tooling that can take the git diff of a release, and identify parts of the application that have changed. The way the association is made is to associate testable parts of the application with source code files.

## Work in progress

This is not at a usable proof of concept yet.

## Approach and philosophy

This is a tool that helps start a partial regression test plan.

### Not perfect

It is unlikely that WhatChanged will ever be perfect for associating files to testable sections of an application.
Reasons:
* There are some changes that may happen on a file that would not merrit testing.
* Some files are associated with too many parts of an application.
* The mappings may not be perfect or are incomplete.
* Some files are associated with multiple features and it may not make sense to test all associated sections.

Considering the limitations, this tools should probably be a starting place to inform a partial regression strategy for a release. It would be best for QA and or development to look at the results of this tool, and discuss if the results make sense. Did this tool miss something, or did it identify something that doesn't really need changing? Don't assume that this tool will generate a perfect partial regression test plan for every release. This tool is intended to be a starting place for a partial regression strategy.

### Itterative implementation

Usually, by the time a team(s) feels the need to switch from full regression testing for releases, the codebase is on the large side. Associating every file with a part of the application could be a daunting prospect. A goal of this project is to allow for itterative file association to be a natural part of development by introducing git hooks that will prompt to associate files with features as the files are changed, if the file is not already associated with a feature.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'what_changed'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install what_changed

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/what_changed.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
