## [Unreleased]

## v0.4.11

- Move logic out of CLI methods ([#64](https://github.com/danielwestendorf/specwrk/issues/64)) by @danielwestendorf  
- Add thruster in front of puma ([#65](https://github.com/danielwestendorf/specwrk/issues/65)) by @danielwestendorf  
- Revise heartbeats logic ([#66](https://github.com/danielwestendorf/specwrk/issues/66)) by @danielwestendorf  

## v0.4.9

- Remove single-run env var (it was not what I wanted) by @danielwestendorf  

## v0.4.8

- Fix `config.ru` by @danielwestendorf  

## v0.4.7

- Switch to Puma for the Docker image (#59) by @danielwestendorf  

## v0.4.6

- Nil env var that will prevent start command from completing ([#56](https://github.com/danielwestendorf/specwrk/issues/56)) by @danielwestendorf  
- Better handling of seed failing ([#57](https://github.com/danielwestendorf/specwrk/issues/57)) by @danielwestendorf  
- Silence health logging ([#58](https://github.com/danielwestendorf/specwrk/issues/58)) by @danielwestendorf  
- Add missing CCI caching of `report.json` ([#55](https://github.com/danielwestendorf/specwrk/issues/55)) by @danielwestendorf  
- Add CircleCI examples ([#50](https://github.com/danielwestendorf/specwrk/issues/50)) by @danielwestendorf  
- Better GHA Examples ([#49](https://github.com/danielwestendorf/specwrk/issues/49)) by @danielwestendorf  
- Skip key lookup and rely on the result of `Hash#delete` instead by @danielwestendorf  

## v0.4.5

- Set ENV var when generating seed examples [#47](https://github.com/danielwestendorf/specwrk/issues/47). by @danielwestendorf 
## v0.4.4

- Don’t dump the completed queue if it’s empty [#45](https://github.com/danielwestendorf/specwrk/issues/45). by @danielwestendorf
- Move single-run CLI option to only be an option for the `serve` command [#41](https://github.com/danielwestendorf/specwrk/issues/41). by @danielwestendorf
- Don’t complete examples which are not in the processing queue [#44](https://github.com/danielwestendorf/specwrk/issues/44). by @danielwestendorf

## v0.4.3

- Fix CLI’s `--uri` option description. by @danielwestendorf
- Add an unauthenticated `/health` endpoint to the server [#40](https://github.com/danielwestendorf/specwrk/issues/40). by @danielwestendorf
- Add support excluding server paths from authentication [#39](https://github.com/danielwestendorf/specwrk/issues/39). by @danielwestendorf

## v0.4.2

- Add specwrk variations to CI [#38](https://github.com/danielwestendorf/specwrk/issues/38). by @danielwestendorf
- Support specifying if subsequent seeds should be ignored for a run [#37](https://github.com/danielwestendorf/specwrk/issues/37). by @danielwestendorf

## v0.4.1

- Make the number of seed waits configurable [#35](https://github.com/danielwestendorf/specwrk/issues/35). by @danielwestendorf

## v0.4.0

- Worker wait for seeding [#32](https://github.com/danielwestendorf/specwrk/issues/32). by @danielwestendorf
- Track if the worker has processed *any* examples [#31](https://github.com/danielwestendorf/specwrk/issues/31). by @danielwestendorf

## v0.3.0

- Assign `Specwrk.net_http` to `Net::HTTP` before WebMock can mock it [#22](https://github.com/danielwestendorf/specwrk/issues/22). by @danielwestendorf
- Worker PIDs representative exit status [#20](https://github.com/danielwestendorf/specwrk/issues/20). by @danielwestendorf
- Track an individual worker’s failures [#19](https://github.com/danielwestendorf/specwrk/issues/19). by @danielwestendorf
- Default localhost server URI is not SSL. by @danielwestendorf
- Handle SSL-protected srv endpoints [#18](https://github.com/danielwestendorf/specwrk/issues/18). by @danielwestendorf

## v0.2.0

- Tag v0.2.0 by @danielwestendorf
