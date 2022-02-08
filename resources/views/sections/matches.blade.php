@if (count($upcoming_results)>0 || count($finished_results)>0)
<section class="match-section set-bg" data-setbg="{{asset('frontend/assets/img/match/match-bg.jpg')}}">
    <div class="container">
        <div class="row">
            @if (count($upcoming_results)>0)
                <div class="col-lg-6">
                    <div class="ms-content">
                        <h4>Next Match</h4>

                        @foreach ($upcoming_results as $result)
                            <div class="mc-table">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="left-team">
                                                <img src="{{is_null($result->teamA->logo)?asset('frontend/assets/img/default.png'):Voyager::image($result->teamA->logo)}}" alt="team a">
                                                <h6>{{$result->teamA->title}}</h6>
                                            </td>
                                            <td class="mt-content">
                                                <div class="mc-op">{{$result->tournament->getTranslatedAttribute('title')}}</div>
                                                <h4>VS</h4>
                                                <div class="mc-op">{{$result->tournament->date}}</div>
                                            </td>
                                            <td class="right-team">
                                                <img src="{{is_null($result->teamB->logo)?asset('frontend/assets/img/default.png'):Voyager::image($result->teamB->logo)}}" alt="team b">
                                                <h6>{{$result->teamB->title}}</h6>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        @endforeach
                        
                    </div>
                </div>  
            @endif
            
            @if (count($finished_results)>0)
                <div class="col-lg-6">
                    <div class="ms-content">
                        <h4>Recent Results</h4>

                        @foreach ($finished_results as $result)
                            <div class="mc-table">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="left-team">
                                                <img src="{{is_null($result->teamA->logo)?asset('frontend/assets/img/default.png'):Voyager::image($result->teamA->logo)}}" alt="team a">
                                                <h6>{{$result->teamA->getTranslatedAttribute('title')}}</h6>
                                            </td>
                                            <td class="mt-content">
                                                <div class="mc-op">{{$result->tournament->getTranslatedAttribute('title')}}</div>
                                                <h4>{{$result->team_a_point}} : {{$result->getTranslatedAttribute('team_b_point')}}</h4>
                                                <div class="mc-op">{{$result->tournament->date}}</div>
                                            </td>
                                            <td class="right-team">
                                                <img src="{{is_null($result->teamB->logo)?asset('frontend/assets/img/default.png'):Voyager::image($result->teamB->logo)}}" alt="team b">
                                                <h6>{{$result->teamB->title}}</h6>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        @endforeach
                        
                    </div>
                </div>
            @endif
            
        </div>
    </div>
</section>
@endif