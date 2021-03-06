<!-- form-error.blade.php -->
@if ($errors->any())
    <section class="error">
        <div class="container mt-5">
            <div class="columns is-centered">
                <div class="column is-6">
                    <div class="alert alert-danger">
                        <ul style="margin-left: 15px;">
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endif