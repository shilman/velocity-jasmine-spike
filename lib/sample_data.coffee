@SampleData =
  holding: (idx, count) -> {symbol: "SYM#{idx}", name: "Holding#{idx}", weight: 1.0/count}
  holdings: (count) -> _.map(_.range(count), (idx) -> SampleData.holding(idx, count))
  portfolio: (idx) ->
    new Portfolio(
      name: "Name#{idx}"
      description: "Description#{idx}"
      holdings: SampleData.holdings(idx)
    )
  portfolios: (count) -> _.map(_.range(count), (idx) -> SampleData.portfolio(idx))
  discussion: (idx) ->
    new Discussion(
      name: "Discussion#{idx}"
    )
  discussions: (count) -> _.map(_.range(count), (idx) -> SampleData.discussion(idx))
