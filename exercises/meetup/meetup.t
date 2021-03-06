#!/usr/bin/env perl6
use v6;
use Test;
use JSON::Fast;
use lib $?FILE.IO.dirname;
use Meetup;
plan 95;

my Version:D $version = v2;

if Meetup.^ver !~~ $version {
  warn "\nExercise version mismatch. Further tests may fail!"
    ~ "\nMeetup is {Meetup.^ver.gist}. "
    ~ "Test is {$version.gist}.\n";
}

my $c-data = from-json $=pod.pop.contents;
is meetup-date(.<description>), Date.new(|.<year month dayofmonth>), .<description> for @($c-data<cases>);

=head2 Canonical Data
=begin code

{
  "exercise": "meetup",
  "version": "1.0.0",
  "cases": [
    {
      "description": "monteenth of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "teenth",
      "dayofweek": "Monday",
      "dayofmonth": 13
    },
    {
      "description": "monteenth of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "teenth",
      "dayofweek": "Monday",
      "dayofmonth": 19
    },
    {
      "description": "monteenth of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "teenth",
      "dayofweek": "Monday",
      "dayofmonth": 16
    },
    {
      "description": "tuesteenth of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "teenth",
      "dayofweek": "Tuesday",
      "dayofmonth": 19
    },
    {
      "description": "tuesteenth of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "teenth",
      "dayofweek": "Tuesday",
      "dayofmonth": 16
    },
    {
      "description": "tuesteenth of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "teenth",
      "dayofweek": "Tuesday",
      "dayofmonth": 13
    },
    {
      "description": "wednesteenth of January 2013",
      "property": "meetup",
      "year": 2013,
      "month": 1,
      "week": "teenth",
      "dayofweek": "Wednesday",
      "dayofmonth": 16
    },
    {
      "description": "wednesteenth of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "teenth",
      "dayofweek": "Wednesday",
      "dayofmonth": 13
    },
    {
      "description": "wednesteenth of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "teenth",
      "dayofweek": "Wednesday",
      "dayofmonth": 19
    },
    {
      "description": "thursteenth of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "teenth",
      "dayofweek": "Thursday",
      "dayofmonth": 16
    },
    {
      "description": "thursteenth of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "teenth",
      "dayofweek": "Thursday",
      "dayofmonth": 13
    },
    {
      "description": "thursteenth of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "teenth",
      "dayofweek": "Thursday",
      "dayofmonth": 19
    },
    {
      "description": "friteenth of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "teenth",
      "dayofweek": "Friday",
      "dayofmonth": 19
    },
    {
      "description": "friteenth of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "teenth",
      "dayofweek": "Friday",
      "dayofmonth": 16
    },
    {
      "description": "friteenth of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "teenth",
      "dayofweek": "Friday",
      "dayofmonth": 13
    },
    {
      "description": "saturteenth of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "teenth",
      "dayofweek": "Saturday",
      "dayofmonth": 16
    },
    {
      "description": "saturteenth of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "teenth",
      "dayofweek": "Saturday",
      "dayofmonth": 13
    },
    {
      "description": "saturteenth of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "teenth",
      "dayofweek": "Saturday",
      "dayofmonth": 19
    },
    {
      "description": "sunteenth of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "teenth",
      "dayofweek": "Sunday",
      "dayofmonth": 19
    },
    {
      "description": "sunteenth of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "teenth",
      "dayofweek": "Sunday",
      "dayofmonth": 16
    },
    {
      "description": "sunteenth of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "teenth",
      "dayofweek": "Sunday",
      "dayofmonth": 13
    },
    {
      "description": "first Monday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "first",
      "dayofweek": "Monday",
      "dayofmonth": 4
    },
    {
      "description": "first Monday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "first",
      "dayofweek": "Monday",
      "dayofmonth": 1
    },
    {
      "description": "first Tuesday of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "first",
      "dayofweek": "Tuesday",
      "dayofmonth": 7
    },
    {
      "description": "first Tuesday of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "first",
      "dayofweek": "Tuesday",
      "dayofmonth": 4
    },
    {
      "description": "first Wednesday of July 2013",
      "property": "meetup",
      "year": 2013,
      "month": 7,
      "week": "first",
      "dayofweek": "Wednesday",
      "dayofmonth": 3
    },
    {
      "description": "first Wednesday of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "first",
      "dayofweek": "Wednesday",
      "dayofmonth": 7
    },
    {
      "description": "first Thursday of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "first",
      "dayofweek": "Thursday",
      "dayofmonth": 5
    },
    {
      "description": "first Thursday of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "first",
      "dayofweek": "Thursday",
      "dayofmonth": 3
    },
    {
      "description": "first Friday of November 2013",
      "property": "meetup",
      "year": 2013,
      "month": 11,
      "week": "first",
      "dayofweek": "Friday",
      "dayofmonth": 1
    },
    {
      "description": "first Friday of December 2013",
      "property": "meetup",
      "year": 2013,
      "month": 12,
      "week": "first",
      "dayofweek": "Friday",
      "dayofmonth": 6
    },
    {
      "description": "first Saturday of January 2013",
      "property": "meetup",
      "year": 2013,
      "month": 1,
      "week": "first",
      "dayofweek": "Saturday",
      "dayofmonth": 5
    },
    {
      "description": "first Saturday of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "first",
      "dayofweek": "Saturday",
      "dayofmonth": 2
    },
    {
      "description": "first Sunday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "first",
      "dayofweek": "Sunday",
      "dayofmonth": 3
    },
    {
      "description": "first Sunday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "first",
      "dayofweek": "Sunday",
      "dayofmonth": 7
    },
    {
      "description": "second Monday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "second",
      "dayofweek": "Monday",
      "dayofmonth": 11
    },
    {
      "description": "second Monday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "second",
      "dayofweek": "Monday",
      "dayofmonth": 8
    },
    {
      "description": "second Tuesday of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "second",
      "dayofweek": "Tuesday",
      "dayofmonth": 14
    },
    {
      "description": "second Tuesday of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "second",
      "dayofweek": "Tuesday",
      "dayofmonth": 11
    },
    {
      "description": "second Wednesday of July 2013",
      "property": "meetup",
      "year": 2013,
      "month": 7,
      "week": "second",
      "dayofweek": "Wednesday",
      "dayofmonth": 10
    },
    {
      "description": "second Wednesday of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "second",
      "dayofweek": "Wednesday",
      "dayofmonth": 14
    },
    {
      "description": "second Thursday of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "second",
      "dayofweek": "Thursday",
      "dayofmonth": 12
    },
    {
      "description": "second Thursday of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "second",
      "dayofweek": "Thursday",
      "dayofmonth": 10
    },
    {
      "description": "second Friday of November 2013",
      "property": "meetup",
      "year": 2013,
      "month": 11,
      "week": "second",
      "dayofweek": "Friday",
      "dayofmonth": 8
    },
    {
      "description": "second Friday of December 2013",
      "property": "meetup",
      "year": 2013,
      "month": 12,
      "week": "second",
      "dayofweek": "Friday",
      "dayofmonth": 13
    },
    {
      "description": "second Saturday of January 2013",
      "property": "meetup",
      "year": 2013,
      "month": 1,
      "week": "second",
      "dayofweek": "Saturday",
      "dayofmonth": 12
    },
    {
      "description": "second Saturday of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "second",
      "dayofweek": "Saturday",
      "dayofmonth": 9
    },
    {
      "description": "second Sunday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "second",
      "dayofweek": "Sunday",
      "dayofmonth": 10
    },
    {
      "description": "second Sunday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "second",
      "dayofweek": "Sunday",
      "dayofmonth": 14
    },
    {
      "description": "third Monday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "third",
      "dayofweek": "Monday",
      "dayofmonth": 18
    },
    {
      "description": "third Monday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "third",
      "dayofweek": "Monday",
      "dayofmonth": 15
    },
    {
      "description": "third Tuesday of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "third",
      "dayofweek": "Tuesday",
      "dayofmonth": 21
    },
    {
      "description": "third Tuesday of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "third",
      "dayofweek": "Tuesday",
      "dayofmonth": 18
    },
    {
      "description": "third Wednesday of July 2013",
      "property": "meetup",
      "year": 2013,
      "month": 7,
      "week": "third",
      "dayofweek": "Wednesday",
      "dayofmonth": 17
    },
    {
      "description": "third Wednesday of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "third",
      "dayofweek": "Wednesday",
      "dayofmonth": 21
    },
    {
      "description": "third Thursday of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "third",
      "dayofweek": "Thursday",
      "dayofmonth": 19
    },
    {
      "description": "third Thursday of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "third",
      "dayofweek": "Thursday",
      "dayofmonth": 17
    },
    {
      "description": "third Friday of November 2013",
      "property": "meetup",
      "year": 2013,
      "month": 11,
      "week": "third",
      "dayofweek": "Friday",
      "dayofmonth": 15
    },
    {
      "description": "third Friday of December 2013",
      "property": "meetup",
      "year": 2013,
      "month": 12,
      "week": "third",
      "dayofweek": "Friday",
      "dayofmonth": 20
    },
    {
      "description": "third Saturday of January 2013",
      "property": "meetup",
      "year": 2013,
      "month": 1,
      "week": "third",
      "dayofweek": "Saturday",
      "dayofmonth": 19
    },
    {
      "description": "third Saturday of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "third",
      "dayofweek": "Saturday",
      "dayofmonth": 16
    },
    {
      "description": "third Sunday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "third",
      "dayofweek": "Sunday",
      "dayofmonth": 17
    },
    {
      "description": "third Sunday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "third",
      "dayofweek": "Sunday",
      "dayofmonth": 21
    },
    {
      "description": "fourth Monday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "fourth",
      "dayofweek": "Monday",
      "dayofmonth": 25
    },
    {
      "description": "fourth Monday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "fourth",
      "dayofweek": "Monday",
      "dayofmonth": 22
    },
    {
      "description": "fourth Tuesday of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "fourth",
      "dayofweek": "Tuesday",
      "dayofmonth": 28
    },
    {
      "description": "fourth Tuesday of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "fourth",
      "dayofweek": "Tuesday",
      "dayofmonth": 25
    },
    {
      "description": "fourth Wednesday of July 2013",
      "property": "meetup",
      "year": 2013,
      "month": 7,
      "week": "fourth",
      "dayofweek": "Wednesday",
      "dayofmonth": 24
    },
    {
      "description": "fourth Wednesday of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "fourth",
      "dayofweek": "Wednesday",
      "dayofmonth": 28
    },
    {
      "description": "fourth Thursday of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "fourth",
      "dayofweek": "Thursday",
      "dayofmonth": 26
    },
    {
      "description": "fourth Thursday of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "fourth",
      "dayofweek": "Thursday",
      "dayofmonth": 24
    },
    {
      "description": "fourth Friday of November 2013",
      "property": "meetup",
      "year": 2013,
      "month": 11,
      "week": "fourth",
      "dayofweek": "Friday",
      "dayofmonth": 22
    },
    {
      "description": "fourth Friday of December 2013",
      "property": "meetup",
      "year": 2013,
      "month": 12,
      "week": "fourth",
      "dayofweek": "Friday",
      "dayofmonth": 27
    },
    {
      "description": "fourth Saturday of January 2013",
      "property": "meetup",
      "year": 2013,
      "month": 1,
      "week": "fourth",
      "dayofweek": "Saturday",
      "dayofmonth": 26
    },
    {
      "description": "fourth Saturday of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "fourth",
      "dayofweek": "Saturday",
      "dayofmonth": 23
    },
    {
      "description": "fourth Sunday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "fourth",
      "dayofweek": "Sunday",
      "dayofmonth": 24
    },
    {
      "description": "fourth Sunday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "fourth",
      "dayofweek": "Sunday",
      "dayofmonth": 28
    },
    {
      "description": "last Monday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "last",
      "dayofweek": "Monday",
      "dayofmonth": 25
    },
    {
      "description": "last Monday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "last",
      "dayofweek": "Monday",
      "dayofmonth": 29
    },
    {
      "description": "last Tuesday of May 2013",
      "property": "meetup",
      "year": 2013,
      "month": 5,
      "week": "last",
      "dayofweek": "Tuesday",
      "dayofmonth": 28
    },
    {
      "description": "last Tuesday of June 2013",
      "property": "meetup",
      "year": 2013,
      "month": 6,
      "week": "last",
      "dayofweek": "Tuesday",
      "dayofmonth": 25
    },
    {
      "description": "last Wednesday of July 2013",
      "property": "meetup",
      "year": 2013,
      "month": 7,
      "week": "last",
      "dayofweek": "Wednesday",
      "dayofmonth": 31
    },
    {
      "description": "last Wednesday of August 2013",
      "property": "meetup",
      "year": 2013,
      "month": 8,
      "week": "last",
      "dayofweek": "Wednesday",
      "dayofmonth": 28
    },
    {
      "description": "last Thursday of September 2013",
      "property": "meetup",
      "year": 2013,
      "month": 9,
      "week": "last",
      "dayofweek": "Thursday",
      "dayofmonth": 26
    },
    {
      "description": "last Thursday of October 2013",
      "property": "meetup",
      "year": 2013,
      "month": 10,
      "week": "last",
      "dayofweek": "Thursday",
      "dayofmonth": 31
    },
    {
      "description": "last Friday of November 2013",
      "property": "meetup",
      "year": 2013,
      "month": 11,
      "week": "last",
      "dayofweek": "Friday",
      "dayofmonth": 29
    },
    {
      "description": "last Friday of December 2013",
      "property": "meetup",
      "year": 2013,
      "month": 12,
      "week": "last",
      "dayofweek": "Friday",
      "dayofmonth": 27
    },
    {
      "description": "last Saturday of January 2013",
      "property": "meetup",
      "year": 2013,
      "month": 1,
      "week": "last",
      "dayofweek": "Saturday",
      "dayofmonth": 26
    },
    {
      "description": "last Saturday of February 2013",
      "property": "meetup",
      "year": 2013,
      "month": 2,
      "week": "last",
      "dayofweek": "Saturday",
      "dayofmonth": 23
    },
    {
      "description": "last Sunday of March 2013",
      "property": "meetup",
      "year": 2013,
      "month": 3,
      "week": "last",
      "dayofweek": "Sunday",
      "dayofmonth": 31
    },
    {
      "description": "last Sunday of April 2013",
      "property": "meetup",
      "year": 2013,
      "month": 4,
      "week": "last",
      "dayofweek": "Sunday",
      "dayofmonth": 28
    },
    {
      "description": "last Wednesday of February 2012",
      "property": "meetup",
      "year": 2012,
      "month": 2,
      "week": "last",
      "dayofweek": "Wednesday",
      "dayofmonth": 29
    },
    {
      "description": "last Wednesday of December 2014",
      "property": "meetup",
      "year": 2014,
      "month": 12,
      "week": "last",
      "dayofweek": "Wednesday",
      "dayofmonth": 31
    },
    {
      "description": "last Sunday of February 2015",
      "property": "meetup",
      "year": 2015,
      "month": 2,
      "week": "last",
      "dayofweek": "Sunday",
      "dayofmonth": 22
    },
    {
      "description": "first Friday of December 2012",
      "property": "meetup",
      "year": 2012,
      "month": 12,
      "week": "first",
      "dayofweek": "Friday",
      "dayofmonth": 7
    }
  ]
}

=end code
