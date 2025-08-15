## [Unreleased]

# Changelog

## v0.15.2 — 2025-08-15
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.15.1...v0.15.2)
- Fix bug where ruby objects were being written to ndjson files isntead of json — [#119](https://github.com/danielwestendorf/specwrk/pull/119) by @danielwestendorf

## v0.15.1 — 2025-08-14
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.15.0...v0.15.1)
- Add `watch` command to split spec files across processes as they change — [#117](https://github.com/danielwestendorf/specwrk/pull/117) by @danielwestendorf
- Readme formatting tweaks — @danielwestendorf

## v0.15.0 — 2025-08-08
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.14.1...v0.15.0)
- When output path is specified, write an `.ndjson` file per worker of all examples executed — [#113](https://github.com/danielwestendorf/specwrk/pull/113) (fixes [#10](https://github.com/danielwestendorf/specwrk/issues/10)) by @danielwestendorf
- Print re-run commands for failures — [#114](https://github.com/danielwestendorf/specwrk/pull/114) (fixes [#7](https://github.com/danielwestendorf/specwrk/issues/7)) by @danielwestendorf
- Show count of examples that did not execute; make runs resumable by only clearing stores on seed — [#115](https://github.com/danielwestendorf/specwrk/pull/115) by @danielwestendorf
- Report flake counts and provide flake re-run commands — [#116](https://github.com/danielwestendorf/specwrk/pull/116) (fixes [#112](https://github.com/danielwestendorf/specwrk/issues/112)) by @danielwestendorf

## v0.14.1 — 2025-08-07
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.14.0...v0.14.1)
- Fix CLI typo — @danielwestendorf

## v0.14.0 — 2025-08-07
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.13.1...v0.14.0)
- Add support for example retries (`--max-retries` for `start` and `seed`) — [#111](https://github.com/danielwestendorf/specwrk/pull/111) (addresses [#96](https://github.com/danielwestendorf/specwrk/issues/96)) by @danielwestendorf

## v0.13.1 — 2025-08-07
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.13.0...v0.13.1)
- Require `securerandom` in the FileAdapter to ensure availability — @danielwestendorf

## v0.13.0 — 2025-08-07
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.12.0...v0.13.0)
- Avoid multi-process tempfile conflicts by adding a UUID to tempfile names — [#108](https://github.com/danielwestendorf/specwrk/pull/108) (fixes [#107](https://github.com/danielwestendorf/specwrk/issues/107)) by @danielwestendorf
- Remove deprecated `complete` endpoint — [#109](https://github.com/danielwestendorf/specwrk/pull/109) (fixes [#95](https://github.com/danielwestendorf/specwrk/issues/95)) by @danielwestendorf
- Track worker success metrics (succeeded/pending/failed) and use them to instruct worker exit behavior — [#110](https://github.com/danielwestendorf/specwrk/pull/110) (fixes [#97](https://github.com/danielwestendorf/specwrk/issues/97)) by @danielwestendorf

## v0.12.0 — 2025-08-06
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.11.1...v0.12.0)
- Don’t return a body for `HEAD` requests in auth middleware — refs [#102](https://github.com/danielwestendorf/specwrk/issues/102) — @danielwestendorf
- Filter `specwrk` from backtraces — @danielwestendorf
- Move store order tracking to the only store class that needs it (performance improvement) — [#105](https://github.com/danielwestendorf/specwrk/pull/105) by @danielwestendorf
- Humanize seconds output — [#106](https://github.com/danielwestendorf/specwrk/pull/106) (fixes [#11](https://github.com/danielwestendorf/specwrk/issues/11)) by @danielwestendorf

## v0.11.1 — 2025-08-05
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.11.0...v0.11.1)
- Avoid doing work in `before_lock` for `complete` and `pop` endpoints — [#104](https://github.com/danielwestendorf/specwrk/pull/104) (fixes [#103](https://github.com/danielwestendorf/specwrk/issues/103)) by @danielwestendorf

## v0.10.2 — 2025-08-01
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.10.1...v0.10.2)
- Add `complete_and_pop` endpoint to reduce HTTP requests ~50% — [#88](https://github.com/danielwestendorf/specwrk/pull/88) by @danielwestendorf
- File-per-example file store — [#87](https://github.com/danielwestendorf/specwrk/pull/87) by @danielwestendorf
- Remove thread safety (follow-up to thread pool changes) — [#89](https://github.com/danielwestendorf/specwrk/pull/89) by @danielwestendorf
- Fix thread pool start — [#90](https://github.com/danielwestendorf/specwrk/pull/90) by @danielwestendorf

## v0.10.1 — 2025-08-01
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.10.0...v0.10.1)
- Internal cleanups and versioning adjustments for the 0.10.x line

## v0.10.0 — 2025-08-01
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.9.1...v0.10.0)
- Prep for 0.10 baseline (no PRs explicitly tied beyond those in 0.10.1/0.10.2)

## v0.9.1 — 2025-08-01
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.9.0...v0.9.1)
- Minor fixes and tag adjustments

## v0.9.0 — 2025-07-30
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.8.0...v0.9.0)
- File-per-example store groundwork — see [#87](https://github.com/danielwestendorf/specwrk/pull/87) by @danielwestendorf

## v0.8.0 — 2025-07-22
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.7.1...v0.8.0)
- Revert datastore and related adjustments — [#86](https://github.com/danielwestendorf/specwrk/pull/86) by @danielwestendorf
- Just return response if no `run_id` header — [#85](https://github.com/danielwestendorf/specwrk/pull/85) by @danielwestendorf
- On `INT`, if RSpec is defined set `wants_to_quit = true` — [#84](https://github.com/danielwestendorf/specwrk/pull/84) by @danielwestendorf
- Datastore for queues — [#83](https://github.com/danielwestendorf/specwrk/pull/83) by @danielwestendorf

## v0.7.1 — 2025-07-22
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.7.0...v0.7.1)
- Minor tag-only bump

## v0.7.0 — 2025-07-22
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.6.3...v0.7.0)
- Only exit 1 when no examples processed and run not completed — [#82](https://github.com/danielwestendorf/specwrk/pull/82) by @danielwestendorf
- Switch from Puma to Pitchfork — [#79](https://github.com/danielwestendorf/specwrk/pull/79) by @danielwestendorf
- Dump all runs as unique — [#78](https://github.com/danielwestendorf/specwrk/pull/78) by @danielwestendorf

## v0.6.3 — 2025-07-17
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.6.2...v0.6.3)
- Reap queues based on staleness of workers — [#76](https://github.com/danielwestendorf/specwrk/pull/76) by @danielwestendorf
- Track worker `first_seen_at` / `last_seen_at` — [#75](https://github.com/danielwestendorf/specwrk/pull/75) by @danielwestendorf
- Unique default ID when no `SPECWRK_ID` provided — [#74](https://github.com/danielwestendorf/specwrk/pull/74) by @danielwestendorf
- Send `X-Specwrk-Id` and `User-Agent` headers — [#71](https://github.com/danielwestendorf/specwrk/pull/71) by @danielwestendorf

## v0.6.2 — 2025-07-17
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.6.1...v0.6.2)
- Tag-only bump

## v0.6.1 — 2025-07-17
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.6.0...v0.6.1)
- Tag-only bump

## v0.6.0 — 2025-07-17
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.5.0...v0.6.0)
- Output success message when seeding succeeds — [#67](https://github.com/danielwestendorf/specwrk/pull/67) by @danielwestendorf

## v0.5.0 — 2025-07-15
[Compare](https://github.com/danielwestendorf/specwrk/compare/v0.4.11...v0.5.0)
- Support specifying if subsequent seeds should be ignored for a run — [#37](https://github.com/danielwestendorf/specwrk/pull/37) by @danielwestendorf
- Make number of seed waits configurable — [#35](https://github.com/danielwestendorf/specwrk/pull/35) by @danielwestendorf
- Worker wait for seeding — [#32](https://github.com/danielwestendorf/specwrk/pull/32) by @danielwestendorf
- Track if the worker has processed *any* examples — [#31](https://github.com/danielwestendorf/specwrk/pull/31) by @danielwestendorf


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
