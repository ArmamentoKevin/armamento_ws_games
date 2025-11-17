<x-layout>
    <x-slot:subtitle>
        {{ $user->username }}
</x-slot>
       <h2>{{ $user->username }}</h2>
       <p>Email: {{ $user->email }} </p>
       <p>Registration Date:  {{ $user->created_at }}</p>
       <p>Last Login:  {{ $user->last_login ?? 'Never' }}</p>
       <button>Block</button>
       
       <section>
        <header> Developed Games</header>
       </section>

       <section>
        <header> Played Games </header>
       </section>
      
</x-layout>