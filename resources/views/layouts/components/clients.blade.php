<section id="clients" class="clients section-bg">
    <div class="container">
        <div class="section-title">
            <h2>Client Kami</h2>
            <p>Telah digunakan oleh beberapa kabupaten secara mandiri di</p>
        </div>
        <div class="row" data-aos="zoom-in">

            @forelse ($clients as $d)
                <div class="col-lg-2 col-md-4 col-4 d-flex align-items-center justify-content-center">
                    <img src="{{ url('uploads/' . Str::replace('.', '-small.', $d->pic_main)) }}" class="img-fluid" alt="">
                    
                </div>
            @empty
            @endforelse
        </div>

    </div>
</section>
