using Pkg; Pkg.add("HTTP"); Pkg.add("JSON3")

using HTTP
using JSON3

base = "http://localhost:8000"


# Retrieve all items
HTTP.request("GET", "$(base)/api/items")


# Add new items
payload = JSON3.write(Dict(:a=>"Hello World", :b=>1))
HTTP.request("POST", "$(base)/api/items",
    [("Content-Type", "application/json")], payload)


# Retrieve specific item
HTTP.request("GET", "$(base)/api/items/1")


# Update specific item
payload = JSON3.write(Dict(:a=>"Hello World Again", :b=>2))
HTTP.request("PUT", "$(base)/api/items/1",
    [("Content-Type", "application/json")], payload)


# Delete specific item
HTTP.request("DELETE", "$(base)/api/items/1")
