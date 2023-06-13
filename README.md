
<a target="_blank" rel="noopener noreferrer nofollow" href="#"><img src="https://user-images.githubusercontent.com/30390958/245320697-59f72dad-d33d-4d05-98a0-f58bb9376b96.png" alt="screenshot" style="max-width: 100%;"></a>

  

##  The Movies DB Example (Laravel 9)

  

Movies Laravel App using TMDB API
  

- Dashboard contain trending films by day

- View movie details (Genre, Editor, Overview, Trailer video, Release date ...)
- CRUD Movies

- Input search movies (Livewire) with pagination

- Artisan Command Task  to retrieve trending movies + multiple params
- Auth System using Jetstream with Livewire + Blade

  


  

## Installation
  


1.  Clone the repo and  `cd`  into it
2.  `composer install`
3.  Rename or copy  `.env.example`  file to  `.env`
4.  Set your  `TMDB_TOKEN` && `TMDB_ENDPOINT`  in your  `.env`  file. You can get an API key  [here](https://www.themoviedb.org/documentation/api). Make sure to use the "API Read Access Token (v4 auth)" from the TMDb dashboard.
5.  `php artisan key:generate`
6. `php artisan migrate` or import backup database from application root (themoviedb.sql)
7. `php artisan movies:get_trending` use database instead of API (To optimize operations)
8. `npm intall`
9. `npm run dev`
10.  `php artisan serve`  or use Laravel Valet or Laravel Homestead
11.  Visit  `localhost:8000`  in your browser
