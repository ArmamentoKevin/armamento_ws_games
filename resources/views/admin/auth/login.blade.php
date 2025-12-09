<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>WS Games - Admin Login</title>
</head>
<body>
    <form action="{{ url('/admin/login') }}" method="POST">
        @csrf
        <h1>Admin Login</h1>

        {{-- Display error for username --}}
        @if ($errors->has('username'))
            <p class="error">{{ $errors->first('username') }}</p>
        @endif

        <div>
            <label for="username">Username:</label>
            <input 
                type="text" 
                name="username" 
                id="username" 
                value="{{ old('username') }}" 
                required 
                autofocus
            >
        </div>

        <div>
            <label for="password">Password:</label>
            <input 
                type="password" 
                name="password" 
                id="password" 
                required
            >
        </div>

        <div>
            <input type="submit" value="Login">
        </div>
    </form>
</body>
</html>
