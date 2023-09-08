@extends('layouts.auth')

    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('/demo3/src/assets/css/dashlite.min.css') }}">

@section('login')
    <div class="login-box">

        <!-- /.login-logo -->
        <div class="login-box-body">
            <h3>
                <p class="text-center"><b>APLIKASI SIMAKKATA</b></p>
            </h3>

            <div class="login-logo">
                <a href="{{ url('/') }}">
                    <img src="{{ url($setting->path_logo) }}" alt="Logo Image" width="350px">
                </a>
            </div>

            <form action="{{ route('login') }}" method="post" class="form-login">
                @csrf
                <div class="form-group has-feedback @error('nip') has-error @enderror">
                    <input type="nip" name="nip" class="form-control" placeholder="Masukan NIP Anda" required
                        value="{{ old('nip') }}" autofocus>
                    <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    @error('nip')
                        <span class="help-block">{{ $message }}</span>
                    @else
                        <span class="help-block with-errors"></span>
                    @enderror
                </div>
                <div class="form-group has-feedback @error('password') has-error @enderror">
                    <input type="password" name="password" class="form-control" placeholder="Masukan Kata Sandi Anda"
                        required>
                    <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    @error('password')
                        <span class="help-block">{{ $message }}</span>
                    @else
                        <span class="help-block with-errors"></span>
                    @enderror
                </div>
                <div class="row">
                    <div class="col-xs-8">
                        <div class="checkbox icheck">
                            <label>
                                <input type="checkbox"> Ingat Saya
                            </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            <h4>
                <p class="text-center"><b>Sistem informasi Mutu Akreditasi <br> Kabupaten Tasikmalaya</b></p>
            </h4>
        </div>

        <!-- /.login-box-body -->
    </div>
    <!-- /.login-box -->
@endsection
