@extends('layouts.main')
@section('container')
    <h1>About Creator :</h1>
    <h5>{{ $name }} </h5>
    <p>Hello, let me introduce myself. My name is Afif Sauqil Arifin. You can call me Afif. I am one of student at Vocational School (SMKN 2 Surabaya), majoring in Informatics and Computer Science. Now, I am 18 years old.

    </p><p>I am interested in programming and passionate about working with computers and learning new things. Do you have a project or idea? Let's collaboration and knowledge sharing happen through any project.</p>
    <img src="img/{{ $image }}" alt="{{ $image }}" width="200" class="img-thumbnail rounded-circle">
@endsection
