<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WS Games - Admin Login</title>

    {{-- Link your main CSS --}}
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
</head>
<body class="admin-login-body">

    <div class="login-card">

        <h1 style="text-align:center; margin-bottom:20px;">Admin Login</h1>

        {{-- Display error for username --}}
        @if ($errors->has('username'))
            <div class="error-box">
                {{ $errors->first('username') }}
            </div>
        @endif

        <form action="{{ url('/admin/login') }}" method="POST">
            @csrf

            {{-- Username --}}
            <div style="margin-bottom: 20px;">
                <label class="login-label" for="username">Username:</label>
                <input 
                    type="text" 
                    name="username" 
                    id="username"
                    value="{{ old('username') }}"
                    required 
                    autofocus
                    class="login-input"
                    placeholder="Enter username"
                >
            </div>

            {{-- Password --}}
            <div style="margin-bottom: 25px;">
                <label class="login-label" for="password">Password:</label>
                <input 
                    type="password" 
                    name="password" 
                    id="password"
                    required
                    class="login-input"
                    placeholder="Enter password"
                >
            </div>

            {{-- Submit --}}
            <button type="submit" class="login-button">
                Login
            </button>

        </form>
    </div>

</body>
</html>
