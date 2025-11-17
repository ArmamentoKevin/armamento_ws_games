<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WS Games {{ $subtitle ?? 'Kevin' }}</title>

<link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>

<body>
    <header class="header">
        <div class="header-inner">
            <h1><a href="{{ url('admin') }}">WS Games</a></h1>

            <nav>
                <ul class="nav-list">
                    <li><a href="{{ url('admin') }}">Admin Users</a></li>
                    <li><a href="{{ url('admin/users') }}">Platform Users</a></li>
                    <li><a href="{{ url('admin/games') }}">Games</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <main class="page-content">
        {{ $slot }}
    </main>

    <footer class="footer">
        <div>
            <p>&copy; Kevin A. Armamento | COMTEQ Computer & Business College, 2025</p>
        </div>
    </footer>

</body>
</html>