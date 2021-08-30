cd("../GenieWebApp.jl")


# Install dependencies for the web application
using Pkg; Pkg.instantiate(); Pkg.activate(".")


# Load the web application
using Genie; Genie.loadapp(); up(8000)
