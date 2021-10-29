<!doctype html>
<html lang="en" class="h-100">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Afif Sauqil Arifin">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Bootstrap Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.6.1/font/bootstrap-icons.css">

    {{-- My Style --}}
    <link rel="stylesheet" href="css/style.css">

    <!-- Custom styles for this template -->
    <link href="/css/cover.css" rel="stylesheet">

    <title>GoBlog | {{ $title }}</title>
  </head>
  <body class="d-flex h-100 text-center text-white bg-dark">

  <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    @include('partials.navbar')
    
    <div class="container my-auto">
      {{-- <main class="px-3"> --}}
        @yield('container')
      {{-- </main> --}}
    </div>

    <footer class="mt-auto text-white-50">
      <p>Create by<a href="https://afifsauqil.github.io/" class="text-white"> Afif</a></p>
    </footer>
  </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  </body>
</html>