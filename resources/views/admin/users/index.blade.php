<x-layout>
    <x-slot:subtitle>
        Platform Users
</x-slot>
       <h2>Platform Users</h2>
       <table id = 'userTbl'>
            <thead>
                <tr>
                    <th>Username</th>
                    <th>Registration Date</th>
                    <th>Last Login</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($platform_users as $user )

                <tr>
                    <td>{{ $user-> username }}</td>
                    <td>{{ $user-> created_at }}</td>
                    <td>{{ $user-> last_login ?? 'Never' }}</td>
                    <td><a href={{ url('admin/users/' .$user->username)}}>View Profile</a></td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{ $platform_users->links() }}
</x-layout>
