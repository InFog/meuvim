{{$test}}
<?php $test; ?>

{{$test->object}}
<?php $test->object; ?>

{{$test->what_happens['if_im_an_array']}}
<?php $text->what_happens['ifImanarray']; ?>

<p> Lorem ipsum </p>

@if (count($comments) > 0)
    {{$toast->is_yummy}}
    {{$toast['isAnarray']}}
    I have comments!
@else
    I have no comments!
@endif

@for ($i =0; $i < count($comments) - 1; $i++)
    The comment body is {{$comments[$i]}}
@endfor

@while ($something)
    I am still looping!
@endwhile

@while ($a = 0; $a < 5; $a++)
    This is a pice of text {{$toast[$a]}}
@endwhile

@section('navigation')
    @parent
    <li>Nav Item 3</li>
@endsection
