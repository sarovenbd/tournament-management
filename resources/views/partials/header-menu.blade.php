@foreach($items as $menu_item)
    <li class="nav-item p-0"><a class="nav-link" href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a></li>
@endforeach