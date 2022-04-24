# GiphyScraper

This application is a simple project that involves querying the search endpoint of the GIPHY API. It uses the httpoison module to make GET requests to the API and uses the jason module to decode the reponse body. The application should return a list of 25 GiphyImage structs that contain information about each queried item. 

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `giphy_scraper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:giphy_scraper, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/giphy_scraper>.

