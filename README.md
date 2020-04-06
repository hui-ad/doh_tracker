# DohTracker

DohTracker is an application to track the following pages:
* Main website:
  * https://health.hawaii.gov/coronavirusdisease2019/
* Detailed page:
  * https://health.hawaii.gov/coronavirusdisease2019/what-you-should-know/current-situation-in-hawaii/

Approach:
* Use wget (via System.cmd at first) to download the pages we're interested in
* Commit those pages to git automatically and push up to github
* Use meeseeks to parse the HTML and store the results in Postgres via Ecto

# Notes

Generated with `mix phx.new doh_tracker --live` (Note that `--live` is currently only available on the Phoenix master branch)

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install --prefix assets`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
