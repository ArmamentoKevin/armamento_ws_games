<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>WS games</title>
  <link rel="stylesheet" href={{asset('styles.css') }}>
</head>
<body>
  <h1>Admin User</h1>
  <header>
    <div class="max-w-5xl m-auto justify between"> 
        <h1><a href={{url('admin') }}></a><h1>
        <nav>
            <ul class="flex">
                <li><a href={{url('admin') }}>Admin users</a><li>
                <li><a href={{url('admin/users') }}>platform users</a><li>
                <li><a href={{url('admin/games') }}>games</a><li>
            <ul>
        <nav>
    </div>   
  <header> 

  <main>
   <h2>Admin user</h2>
   <table>
    <thread>
        <tr>
            <th>Username</th>
            <th>Created at</th>
            <th>Last log In</th>
        <tr>
    <thread>
   <table> 
  <main>
    <footer>
        <h3>"Welcome to Comteq the best school in town hehe</h3>
    </footer>

  <h2>Messages</h2>
  <div id="messages">
    <?php include 'view.php'; ?>
  </div>
</body>
</html>
