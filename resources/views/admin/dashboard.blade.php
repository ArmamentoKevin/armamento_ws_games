<x-layout>
    <x-slot name="header">
        <h1 class="text-3xl font-bold text-gray-800 dark:text-gray-200">Admin Dashboard</h1>
    </x-slot>

    <div class="py-8 px-4">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">

            <!-- Users Box -->
            <a href="{{ route('admin.users') }}" class="p-6 bg-white dark:bg-gray-800 shadow rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 transition">
                <h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200">Users</h2>
                <p class="text-gray-600 dark:text-gray-400 mt-2">Manage all registered users</p>
            </a>

            <!-- Games Box -->
            <a href="{{ route('admin.games') }}" class="p-6 bg-white dark:bg-gray-800 shadow rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 transition">
                <h2 class="text-xl font-semibold text-gray-800 dark:text-gray-200">Games</h2>
                <p class="text-gray-600 dark:text-gray-400 mt-2">View or remove submitted games</p>
            </a>

            <!-- Logout -->
            <form action="{{ route('admin.logout') }}" method="POST" class="p-6 bg-red-100 shadow rounded-lg">
                @csrf
                <button class="w-full text-red-700 font-semibold hover:text-white hover:bg-red-500 px-4 py-2 rounded transition">
                    Logout Admin
                </button>
            </form>

        </div>
    </div>
</x-layout>
