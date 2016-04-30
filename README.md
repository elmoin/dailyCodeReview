# DailyCodeReview
A simple tool to keep track who's turn it is to show some code.

## Concept
In our company we hold short code reviews every day, so we all know what the others are working on or how other projects work. To choose who's turn it is we rotate through the group of developers. To keep track of this we have a nice cardboard tool hanging on the wall, similar to a wheel of fortune or a clock. But of course it would be nice to have a web tool for this.

## Why Elm might be a good choice
Of course this could be done with every other language, but we might leverage Elms niceties to make it pretty :)

## Considerations
There are several ways to choose a person for a given day. The easiest might be taking the current time (in seconds since the epoch) and just modulo and map them to the weekdays. This is not too elegant and we get a problem if we have seven people. It would be your turn on the same day of the week every day and two persons would always get saturday and sunday. So maybe we can think of something nicer (database?).
