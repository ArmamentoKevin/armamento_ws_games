<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>WS Games {{ $subtitle ?? '' }}</title>

    <link rel="stylesheet" href="{{ asset('css/style.css') }}" />
    @vite('resources/css/app.css')
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
                    <li>
                        <a href="{{ route('admin.logout') }}"
                           onclick="event.preventDefault(); document.getElementById('admin-logout-form').submit();">
                            Logout
                        </a>
                    </li>
                </ul>
            </nav>

            <!-- Hidden logout form -->
            <form id="admin-logout-form" action="{{ route('admin.logout') }}" method="POST" style="display:none;">
                @csrf
            </form>
        </div>
    </header>

    <main class="page-content">
        {{ $slot }}
    </main>

    <footer class="footer">
        <p>&copy; Kevin A. Armamento | COMTEQ Computer & Business College, 2025</p>
    </footer>

</body>
</html>
