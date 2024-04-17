# Cryptocom/Spot
# https://exchange-docs.crypto.com/exchange/v1/rest-ws/index.html#introduction

using Dates
using CryptoAPIs
using CryptoAPIs.Cryptocom

CryptoAPIs.Cryptocom.Spot.candle(;
    instrument_name = "BTC_USDT",
    ttimeframe = Cryptocom.Spot.Candle.M1,
) 

CryptoAPIs.Cryptocom.Spot.get_instruments()

CryptoAPIs.Cryptocom.Spot.ticker(; instrument_name = "BTCUSD-PERP") 