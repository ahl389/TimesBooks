module TimesBooks
  module List
  
    # gets individual list by name, results more recent published
    def getListByName(name)
      url = "https://api.nytimes.com/svc/books/v3/lists.json"
      params =  { 
        list: name 
      }
      
      self.request(url, params)
    end
    
    # gets a summary of all lists (no book results)
    def getLists()
      url = "https://api.nytimes.com/svc/books/v3/lists/names.json"
      params =  {}
      self.request(url, params)
    end

    # search for a list that contains a book with a certain author, title, or publisher
    def searchLists(author = '', title = '', publisher = '')
      url = "https://api.nytimes.com/svc/books/v3/lists/best-sellers/history.json"
      params = {
        author: author,
        title: title,
        publisher: publisher
      }
      
      self.request(url, params)
    end
    
    # returns complete set of published lists, including book results, for provided date
    def getListsByDate(date)
      url = "https://api.nytimes.com/svc/books/v3/lists/overview.json"
      params = {
        published_date: date
      }
      self.request(url, params)
    end
    
    # search for a review by book title, author, or isbn
    def searchReviews(isbn = '', title = '', author = '')
      url = "https://api.nytimes.com/svc/books/v3/reviews.json"
      params = {
        author: author,
        title: title,
        isbn: isbn
      }
      self.request(url, params)
    end
  end
end