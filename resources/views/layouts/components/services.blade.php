<section id="services" class="services section-bg">
    <div class="container" data-aos="fade-up">

        <div class="section-title">
            <h2>Layanan IT Consulting</h2>
            <p>Kami membantu memperluas jangkauan Bisnis dan Percepatan Pelayanan anda Dengan Transformasi System
                Digital Terintegrasi</p>
        </div>

        <div class="row">
            @forelse ($services as $d)
                <div class="col-xl-3 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                    <div class="icon-box">
                        <div class="icon"><i class="bx bxl-dribbble"></i></div>
                        <h4><a href="">{{ $d->title }}</a></h4>
                        <p class="text-black">{{ $d->subtitle }}</p>
                    </div>
                </div>
            @empty
            @endforelse


        </div>

    </div>
</section>
