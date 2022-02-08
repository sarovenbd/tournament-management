@extends('layouts.app')

@section('title', 'Teams')

@section('content')
  <div class="page-header page-header-small">
      <div class="page-header-image" style="background-image: url('{{asset('frontend/assets/img/header-bg.jpg')}}');">
      </div>
      <div class="content-center">
          <div class="row">
              <div class="col-md-6 ml-auto mr-auto text-center">
                  <h1 class="title">{{__('teams.page-title')}}</h1>
              </div>
          </div>
      </div>
  </div>

  @if (count($teams)>0)

    <div class="section">
      <div class="container">
        <div class="row">
          @foreach ($teams as $team)
            <div class="col-md-4 mt-5">
              <div class="card">
                <div class="card-body">
                  <h2 class="title text-center">{{ $team->getTranslatedAttribute('title') }}</h2>
                  <div class="align-items-center d-flex justify-content-center mb-3">
                    <p class="text-muted">Founded {{date('d F,Y', strtotime($team->founding_date))}}</p>
                  </div>
                  
                  <div class="row d-flex justify-content-center">
                    <ul class="list-unstyled">
                      <li>
                        <?php $count = 0; ?>
                        @foreach ($team->players as $player)
                          <?php if($count == 4) break; ?>
                            <img class="teams-player-img img-fluid rounded-circle" src="{{is_null($player->image)? asset('frontend/assets/img/default.png') :Voyager::image($player->image)}}">
                          <?php $count++; ?>
                        @endforeach
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="card-footer">
                  <div class="align-items-center d-flex justify-content-center mb-2">
                    <a href="/team/{{$team->slug}}" class="btn btn-info">Team Page</a>
                  </div>
                </div>
              </div>
            </div>
          @endforeach
        </div>

        <div class="row justify-content-center mt-5">
          {{ $teams->links()}}
        </div>

      </div>
    </div>  
  @endif
    
@endsection