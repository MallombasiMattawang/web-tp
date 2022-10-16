<section id="faq" class="faq ">
    <div class="container" data-aos="fade-up">

        <div class="section-title">
            <h2>FAQ</h2>
        </div>
        <div class="faq-list">
            <ul>
                @forelse ($faqs as $d)
                    <li data-aos="fade-up" data-aos-delay="{{ $d->id }}00">
                        <i class="bx bx-help-circle icon-help"></i> <a data-bs-toggle="collapse"
                            data-bs-target="#faq-list-{{ $d->id }}" class="collapsed">{{ $d->question }} <i
                                class="bx bx-chevron-down icon-show"></i><i class="bx bx-chevron-up icon-close"></i></a>
                        <div id="faq-list-{{ $d->id }}" class="collapse" data-bs-parent=".faq-list">
                            <p class="text-black">
                                {!! $d->answer !!}
                            </p>
                        </div>
                    </li>

                @empty
                @endforelse


            </ul>
        </div>

    </div>
</section>
