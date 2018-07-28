# TMDb

## How

```
import Moya
import TMDb

let api = MoyaProvider<TMDb>(plugins: [
	TMDb.AuthPlugin(apiKey: apiKey)
])

```
