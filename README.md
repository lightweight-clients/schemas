# Schemes

Actual versions of schemes for APIs.

## Description

This repository contains the actual versions of schemes for APIs.
The schemes are generated from the official documentation and are updated regularly.

If you find any errors or inconsistencies, please create an issue or a pull request.

## Structure

- `schemas/` - contains the actual schemes for APIs.
- `generators/` - contains the generators for the schemes.
- `schemas.json` - contains the information about the schemes. See below for details.

### schemas.json

The repository contains the `schemas.json` file, which contains the actual information about the schemes.
Its structure is as follows:

```json
{
    "api-alias": {
        "name": "API name",
        "schema_version": "9.0.0+20231001235959",
        "source_version": "9.0.0",
        "source_hash": "3010BF7F",
        "updated_at": "2023-10-01T23:59:59Z"
    }
}
```

- `api-alias` - alias of the API. Matches the name of the folder in the `schemas` directory.
  Once added, the alias will not be changed.
- `name` - name of the API. Matches the name in the table below.
- `schema_version` - version of the schema in repository.
  Consists of the version of the schema and the date of the last update.
- `source_version` - version of the API in the official documentation.
- `source_hash` - hash of the official documentation (CRC32).
  The schema is generated from the official documentation when the hash changes.
- `updated_at` - date of the last update of the schema in the repository in ISO 8601 format.

## Schemes

| API                   | Current version                                                                                                                                                                                                                                                         | Actual API version                                                                                                                                                                                                                                   | Last update                                                                                                                                                                                                                                                       |
|-----------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Telegram Bot API      | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Flightweight-clients%2Fschemas%2Frefs%2Fheads%2Fmaster%2Fschemas.json&query=%24%5B'telegram-bot-api'%5D.schema_version&style=flat-square&label=%20)        | ![Dynamic Regex Badge](https://img.shields.io/badge/dynamic/regex?url=https%3A%2F%2Fcore.telegram.org%2Fbots%2Fapi&search=Bot%20API%20(%5B%5Cd%5C.%5D%2B)&replace=%241&style=flat-square&label=%20)                                                  | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Flightweight-clients%2Fschemas%2Frefs%2Fheads%2Fmaster%2Fschemas.json&query=%24%5B'telegram-bot-api'%5D.updated_at&style=flat-square&label=%20)      |
| Shikimori GraphQL API | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Flightweight-clients%2Fschemas%2Frefs%2Fheads%2Fmaster%2Fschemas.json&query=%24%5B'shikimori-graphql-api'%5D.schema_version&style=flat-square&label=%20) * | N/A *                                                                                                                                                                                                                                                | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Flightweight-clients%2Fschemas%2Frefs%2Fheads%2Fmaster%2Fschemas.json&query=%24%5B'shikimori-graphql-api'%5D.updated_at&style=flat-square&label=%20) |
| Jikan API             | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Flightweight-clients%2Fschemas%2Frefs%2Fheads%2Fmaster%2Fschemas.json&query=%24%5B'jikan-api'%5D.schema_version&style=flat-square&label=%20)               | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Fjikan-me%2Fjikan-rest%2Frefs%2Fheads%2Fmaster%2Fstorage%2Fapi-docs%2Fapi-docs.json&query=%24.info.version&style=flat-square&label=%20) | ![Dynamic JSON Badge](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fraw.githubusercontent.com%2Flightweight-clients%2Fschemas%2Frefs%2Fheads%2Fmaster%2Fschemas.json&query=%24%5B'jikan-api'%5D.updated_at&style=flat-square&label=%20)             |

\* GraphQL API does not have a versioning system, so the current version is not available. The schema is generated from the official documentation when the hash changes.

### Telegram Bot API

Source: https://core.telegram.org/bots/api

Available files:

- OpenAPI Specification

### Shikimori GraphQL API

Source: https://shikimori.one/api/doc/graphql

Available files:

- GraphQL Schema

### Jikan API

Project: https://jikan.moe/

Source: https://github.com/jikan-me/jikan-rest/blob/master/storage/api-docs/api-docs.json

Available files:

- OpenAPI Specification

## License

![GitHub License](https://img.shields.io/github/license/lightweight-clients/schemas)
