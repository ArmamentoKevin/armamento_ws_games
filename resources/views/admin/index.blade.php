<x-layout>
    <h2>Admin Users</h2>

    <table class="admin-table" id="adminTbl">

        <thead>
            <tr>
                <th>Username</th>
                <th>Created At</th>
                <th>Last Login</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($admin_users as $admin)
                <tr>
                    <td>{{ $admin->username }}</td>
                    <td>{{ $admin->created_at }}</td>
                    <td>{{ $admin->last_login ?? 'Never' }}</td>
                </tr>
            @endforeach
        </tbody>
        
    </table>
</x-layout>
