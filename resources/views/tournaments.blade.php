@extends('layouts.app')

@section('title','Tournaments')

@section('content')
  <div class="page-header page-header-small">
    <div class="page-header-image" style="background-image: url('{{asset('frontend/assets/img/header-bg.jpg')}}');">
    </div>
    <div class="content-center">
        <div class="row">
            <div class="col-md-6 ml-auto mr-auto text-center">
              <h1 class="title">{{__('tournaments.page-title')}}</h1>
            </div>
        </div>
    </div>
  </div>

  <div class="section">
    <div class="container table-responsive-md">
      @if (count($tournaments)>0)
        <table class="table">
          <thead>
              <tr>
                  <th>Event</th>
                  <th>Venue</th>
                  <th>Date</th>
                  <th>Status</th>
                  <th></th>
              </tr>
          </thead>
          <tbody>
            @foreach ($tournaments as $tournament)
              
              <tr>
                <td>{{$tournament->getTranslatedAttribute('title')}}</td>
                <td>{{$tournament->getTranslatedAttribute('venue')}}</td>
                <td>{{$tournament->date}}</td>
                <td>{{$tournament->status}}</td>
                <td class="td-actions text-right">
                    <a href="/tournament/{{$tournament->slug}}" class="btn btn-info btn-sm">
                        View Details
                    </a>
                </td>
              </tr>
              
            @endforeach
          </tbody>
        </table>

        <div class="row justify-content-center">
          {{$tournaments->links()}}
        </div>
      @endif
    </div>
  </div>
  
  @include('sections.matches')
  @include('sections.live-streams')

@endsection
