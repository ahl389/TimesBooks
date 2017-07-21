# TimesBooks

This is a light ruby API client for the New York Times' Books API.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'times_books'
```

And then execute:

    $ bundle install


## Usage

#### Getting Started
In your rails app add a file to your config/initializers directory called times_books.rb:

```ruby
TimesBooks.configure(
  api_key: 'YOUR API KEY'
)
```

#### Connecting to the API

Create a new client (probably in a model):

```ruby
client = TimesBooks::Client.new()
```

#### Making Queries

##### Get List By Name

Return the most recent published version of an individual Times' Best Seller List by name (i.e. hardcover-fiction).  You can get the full name list with getLists().  Please note this endpoint can accomodate queries with whole slew of parameters but the gem is currently only set up to grab by name. Contributions to this gem could include setting up some of these other parameters.

```ruby
client.getListByName(name)
```

##### Search Lists by Best Seller

Search for a Best Seller List that contains a book with a certain author, title, or publisher.

```ruby
client.searchLists(author, title, publisher)
```

##### Get All Lists

Gets an overview of all the different best seller lists.  Please note this endpoint will not return any book results.

```ruby
client.getLists()
```

##### Get Published Lists By Date

Returns a complete set of published lists, including the books on those lists, for provided date.  Date should be in YYYY-MM-DD format.


```ruby
client.getListsByDate(date)
```

##### Search Reviews

Search for a book review by the book's title, author, or isbn.  10 or 13 digit ISBNs will work.

```ruby
client.searchReviews(isbn, title, author)
```


## Contributing

I welcome contributions from anyone who wants to expand on this gem and include more queries.  Bug reports and pull requests are welcome on GitHub at https://github.com/ahl389/times_books.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
