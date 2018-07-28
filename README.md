# TMDb

## General

A modern TMDb API Wrapper with:

- [x] Completely typed API layer with Codable models
- [x] Based on Moya, support Rx.
- [x] Well tested
- [ ] Support Cocoapods and SPM

## Manual

```swift
import Moya
import TMDb

let api = MoyaProvider<TMDb>(plugins: [
    TMDb.AuthPlugin(apiKey: apiKey)
])

// Use Rx
api.rx.request(.movieLatest)
    .map(TMDb.MovieDetail.self)
    .subscribe()

// Without Rx
api.request(.movieLatest) { (resp) in
}

```

## API TODO


### ACCOUNT

- [ ] [Get Details](https://developers.themoviedb.org/3/account/sidebar-item-get-account-details)
- [ ] [Get Created Lists](https://developers.themoviedb.org/3/account/sidebar-item-get-created-lists)
- [ ] [Get Favorite Movies](https://developers.themoviedb.org/3/account/sidebar-item-get-favorite-movies)
- [ ] [Get Favorite TV Shows](https://developers.themoviedb.org/3/account/sidebar-item-get-favorite-tv-shows)
- [ ] [Mark as Favorite](https://developers.themoviedb.org/3/account/sidebar-item-mark-as-favorite)
- [ ] [Get Rated Movies](https://developers.themoviedb.org/3/account/sidebar-item-get-rated-movies)
- [ ] [Get Rated TV Shows](https://developers.themoviedb.org/3/account/sidebar-item-get-rated-tv-shows)
- [ ] [Get Rated TV Episodes](https://developers.themoviedb.org/3/account/sidebar-item-get-rated-tv-episodes)
- [ ] [Get Movie Watchlist](https://developers.themoviedb.org/3/account/sidebar-item-get-movie-watchlist)
- [ ] [Get TV Show Watchlist](https://developers.themoviedb.org/3/account/sidebar-item-get-tv-show-watchlist)
- [ ] [Add to Watchlist](https://developers.themoviedb.org/3/account/sidebar-item-add-to-watchlist)

### AUTHENTICATION

- [ ] [Create Guest Session](https://developers.themoviedb.org/3/authentication/sidebar-item-create-guest-session)
- [ ] [Create Request Token](https://developers.themoviedb.org/3/authentication/sidebar-item-create-request-token)
- [ ] [Create Session](https://developers.themoviedb.org/3/authentication/sidebar-item-create-session)
- [ ] [Create Session With Login](https://developers.themoviedb.org/3/authentication/sidebar-item-validate-request-token)
- [ ] [Create Session (from v4 access token)](https://developers.themoviedb.org/3/authentication/sidebar-item-create-session-from-v4-access-token)
- [ ] [Delete Session](https://developers.themoviedb.org/3/authentication/sidebar-item-delete-session)

### CERTIFICATIONS

- [ ] [Get Movie Certifications](https://developers.themoviedb.org/3/certifications/sidebar-item-get-movie-certifications)
- [ ] [Get TV Certifications](https://developers.themoviedb.org/3/certifications/sidebar-item-get-tv-certifications)

### CHANGES

- [ ] [Get Movie Change List](https://developers.themoviedb.org/3/changes/sidebar-item-get-movie-change-list)
- [ ] [Get TV Change List](https://developers.themoviedb.org/3/changes/sidebar-item-get-tv-change-list)
- [ ] [Get Person Change List](https://developers.themoviedb.org/3/changes/sidebar-item-get-person-change-list)

### COLLECTIONS

- [ ] [Get Details](https://developers.themoviedb.org/3/collections/sidebar-item-get-collection-details)
- [ ] [Get Images](https://developers.themoviedb.org/3/collections/sidebar-item-get-collection-images)
- [ ] [Get Translations](https://developers.themoviedb.org/3/collections/sidebar-item-get-collection-translations)

### COMPANIES

- [ ] [Get Details](https://developers.themoviedb.org/3/companies/sidebar-item-get-company-details)
- [ ] [Get Alternative Names](https://developers.themoviedb.org/3/companies/sidebar-item-get-company-alternative-names)
- [ ] [Get Images](https://developers.themoviedb.org/3/companies/sidebar-item-get-company-images)

### CONFIGURATION

- [ ] [Get API Configuration](https://developers.themoviedb.org/3/configuration/sidebar-item-get-api-configuration)
- [ ] [Get Countries](https://developers.themoviedb.org/3/configuration/sidebar-item-get-countries)
- [ ] [Get Jobs](https://developers.themoviedb.org/3/configuration/sidebar-item-get-jobs)
- [ ] [Get Languages](https://developers.themoviedb.org/3/configuration/sidebar-item-get-languages)
- [ ] [Get Primary Translations](https://developers.themoviedb.org/3/configuration/sidebar-item-get-primary-translations)
- [ ] [Get Timezones](https://developers.themoviedb.org/3/configuration/sidebar-item-get-timezones)

### CREDITS

- [ ] [Get Details](https://developers.themoviedb.org/3/credits/sidebar-item-get-credit-details)

### DISCOVER

- [ ] [Movie Discover](https://developers.themoviedb.org/3/discover/sidebar-item-movie-discover)
- [ ] [TV Discover](https://developers.themoviedb.org/3/discover/sidebar-item-tv-discover)

### FIND

- [ ] [Find by ID](https://developers.themoviedb.org/3/find/sidebar-item-find-by-id)

### GENRES

- [ ] [Get Movie List](https://developers.themoviedb.org/3/genres/sidebar-item-get-movie-list)
- [ ] [Get TV List](https://developers.themoviedb.org/3/genres/sidebar-item-get-tv-list)

### GUEST SESSIONS

- [ ] [Get Rated Movies](https://developers.themoviedb.org/3/guest-sessions/sidebar-item-get-guest-session-rated-movies)
- [ ] [Get Rated TV Shows](https://developers.themoviedb.org/3/guest-sessions/sidebar-item-get-guest-session-rated-tv-shows)
- [ ] [Get Rated TV Episodes](https://developers.themoviedb.org/3/guest-sessions/sidebar-item-get-gest-session-rated-tv-episodes)

### KEYWORDS

- [ ] [Get Details](https://developers.themoviedb.org/3/keywords/sidebar-item-get-keyword-details)
- [ ] [Get Movies](https://developers.themoviedb.org/3/keywords/sidebar-item-get-movies-by-keyword)

### LISTS

- [ ] [Get Details](https://developers.themoviedb.org/3/lists/sidebar-item-get-list-details)
- [ ] [Check Item Status](https://developers.themoviedb.org/3/lists/sidebar-item-check-item-status)
- [ ] [Create List](https://developers.themoviedb.org/3/lists/sidebar-item-create-list)
- [ ] [Add Movie](https://developers.themoviedb.org/3/lists/sidebar-item-add-movie)
- [ ] [Remove Movie](https://developers.themoviedb.org/3/lists/sidebar-item-remove-movie)
- [ ] [Clear List](https://developers.themoviedb.org/3/lists/sidebar-item-clear-list)
- [ ] [Delete List](https://developers.themoviedb.org/3/lists/sidebar-item-delete-list)

### MOVIES

- [x] [Get Details](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-details)
- [ ] [Get Account States](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-account-states)
- [ ] [Get Alternative Titles](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-alternative-titles)
- [ ] [Get Changes](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-changes)
- [x] [Get Credits](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-credits)
- [x] [Get External IDs](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-external-ids)
- [x] [Get Images](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-images)
- [x] [Get Keywords](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-keywords)
- [x] [Get Release Dates](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-release-dates)
- [ ] [Get Videos](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-videos)
- [ ] [Get Translations](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-translations)
- [ ] [Get Recommendations](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-recommendations)
- [ ] [Get Similar Movies](https://developers.themoviedb.org/3/movies/sidebar-item-get-similar-movies)
- [ ] [Get Reviews](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-reviews)
- [ ] [Get Lists](https://developers.themoviedb.org/3/movies/sidebar-item-get-movie-lists)
- [ ] [Rate Movie](https://developers.themoviedb.org/3/movies/sidebar-item-rate-movie)
- [ ] [Delete Rating](https://developers.themoviedb.org/3/movies/sidebar-item-delete-movie-rating)
- [x] [Get Latest](https://developers.themoviedb.org/3/movies/sidebar-item-get-latest-movie)
- [x] [Get Now Playing](https://developers.themoviedb.org/3/movies/sidebar-item-get-now-playing)
- [x] [Get Popular](https://developers.themoviedb.org/3/movies/sidebar-item-get-popular-movies)
- [x] [Get Top Rated](https://developers.themoviedb.org/3/movies/sidebar-item-get-top-rated-movies)
- [x] [Get Upcoming](https://developers.themoviedb.org/3/movies/sidebar-item-get-upcoming)

### NETWORKS

- [ ] [Get Details](https://developers.themoviedb.org/3/networks/sidebar-item-get-network-details)
- [ ] [Get Alternative Names](https://developers.themoviedb.org/3/networks/sidebar-item-get-network-alternative-names)
- [ ] [Get Images](https://developers.themoviedb.org/3/networks/sidebar-item-get-network-images)

### PEOPLE

- [ ] [Get Details](https://developers.themoviedb.org/3/people/sidebar-item-get-person-details)
- [ ] [Get Changes](https://developers.themoviedb.org/3/people/sidebar-item-get-person-changes)
- [ ] [Get Movie Credits](https://developers.themoviedb.org/3/people/sidebar-item-get-person-movie-credits)
- [ ] [Get TV Credits](https://developers.themoviedb.org/3/people/sidebar-item-get-person-tv-credits)
- [ ] [Get Combined Credits](https://developers.themoviedb.org/3/people/sidebar-item-get-person-combined-credits)
- [ ] [Get External IDs](https://developers.themoviedb.org/3/people/sidebar-item-get-person-external-ids)
- [ ] [Get Images](https://developers.themoviedb.org/3/people/sidebar-item-get-person-images)
- [ ] [Get Tagged Images](https://developers.themoviedb.org/3/people/sidebar-item-get-tagged-images)
- [ ] [Get Translations](https://developers.themoviedb.org/3/people/sidebar-item-get-person-translations)
- [ ] [Get Latest](https://developers.themoviedb.org/3/people/sidebar-item-get-latest-person)
- [ ] [Get Popular](https://developers.themoviedb.org/3/people/sidebar-item-get-popular-people)

### REVIEWS

- [ ] [Get Details](https://developers.themoviedb.org/3/reviews/sidebar-item-get-review-details)

### SEARCH

- [ ] [Search Companies](https://developers.themoviedb.org/3/search/sidebar-item-search-companies)
- [ ] [Search Collections](https://developers.themoviedb.org/3/search/sidebar-item-search-collections)
- [ ] [Search Keywords](https://developers.themoviedb.org/3/search/sidebar-item-search-keywords)
- [ ] [Search Movies](https://developers.themoviedb.org/3/search/sidebar-item-search-movies)
- [ ] [Multi Search](https://developers.themoviedb.org/3/search/sidebar-item-multi-search)
- [ ] [Search People](https://developers.themoviedb.org/3/search/sidebar-item-search-people)
- [ ] [Search TV Shows](https://developers.themoviedb.org/3/search/sidebar-item-search-tv-shows)

### TV

- [ ] [Get Details](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-details)
- [ ] [Get Account States](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-account-states)
- [ ] [Get Alternative Titles](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-alternative-titles)
- [ ] [Get Changes](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-changes)
- [ ] [Get Content Ratings](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-content-ratings)
- [ ] [Get Credits](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-credits)
- [ ] [Get Episode Groups](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-episode-groups)
- [ ] [Get External IDs](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-external-ids)
- [ ] [Get Images](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-images)
- [ ] [Get Keywords](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-keywords)
- [ ] [Get Recommendations](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-recommendations)
- [ ] [Get Reviews](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-reviews)
- [ ] [Get Screened Theatrically](https://developers.themoviedb.org/3/tv/sidebar-item-get-screened-theatrically)
- [ ] [Get Similar TV Shows](https://developers.themoviedb.org/3/tv/sidebar-item-get-similar-tv-shows)
- [ ] [Get Translations](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-translations)
- [ ] [Get Videos](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-videos)
- [ ] [Rate TV Show](https://developers.themoviedb.org/3/tv/sidebar-item-rate-tv-show)
- [ ] [Delete Rating](https://developers.themoviedb.org/3/tv/sidebar-item-delete-tv-show-rating)
- [ ] [Get Latest](https://developers.themoviedb.org/3/tv/sidebar-item-get-latest-tv)
- [ ] [Get TV Airing Today](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-airing-today)
- [ ] [Get TV On The Air](https://developers.themoviedb.org/3/tv/sidebar-item-get-tv-on-the-air)
- [ ] [Get Popular](https://developers.themoviedb.org/3/tv/sidebar-item-get-popular-tv-shows)
- [ ] [Get Top Rated](https://developers.themoviedb.org/3/tv/sidebar-item-get-top-rated-tv)

### TV SEASONS

- [ ] [Get Details](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-details)
- [ ] [Get Changes](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-changes)
- [ ] [Get Account States](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-account-states)
- [ ] [Get Credits](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-credits)
- [ ] [Get External IDs](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-external-ids)
- [ ] [Get Images](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-images)
- [ ] [Get Videos](https://developers.themoviedb.org/3/tv-seasons/sidebar-item-get-tv-season-videos)

### TV EPISODES

- [ ] [Get Details](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-details)
- [ ] [Get Changes](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-changes)
- [ ] [Get Account States](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-account-states)
- [ ] [Get Credits](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-credits)
- [ ] [Get External IDs](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-external-ids)
- [ ] [Get Images](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-images)
- [ ] [Get Translations](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-translations)
- [ ] [Rate TV Episode](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-rate-tv-episode)
- [ ] [Delete Rating](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-delete-tv-episode-rating)
- [ ] [Get Videos](https://developers.themoviedb.org/3/tv-episodes/sidebar-item-get-tv-episode-videos)

### TV EPISODE GROUPS

- [ ] [Get Details](https://developers.themoviedb.org/3/tv-episode-groups/sidebar-item-get-tv-episode-group-details)
