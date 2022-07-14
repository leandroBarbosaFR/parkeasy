import { Controller } from "@hotwired/stimulus"
import Swiper, { Autoplay, Pagination, Navigation} from 'swiper';
// import 'swiper/swiper.min.css';
// import "swiper/modules/pagination/pagination.min.css";
// import "swiper/modules/navigation/navigation.min.css";
import 'swiper/css';
import 'swiper/css/navigation';
import 'swiper/css/pagination';
import 'swiper/css/autoplay';


Swiper.use([Autoplay, Pagination, Navigation]);

export default class extends Controller {
  static targets = ["container", "pagination", "prev", "next"];


  connect() {
    this.swiper = new Swiper( this.containerTarget, {
      // configure Swiper to use modules
      // Responsive Breakpoints
      breakpoints: {
        // when window width is >= 320px
        320: {
          slidesPerView: 1,
          spaceBetween: 10
        },
        // when window width is >= 550px
        550: {
          slidesPerView: 2,
          spaceBetween: 10
        },

        // when window width is >= 1000px
        1000: {
          slidesPerView: 4,
          spaceBetween: 10
        }
      },

      centeredSlides: true,
      allowTouchMove: true,

      // Optional parameters
      direction: 'horizontal',
      loop: true,

      // autoplay: {
      //   delay: 3000,
      // },

      // pagination: {
      //   el: this.paginationTarget,
      //   type: 'bullets',
      //   clickable: true
      // },

      navigation: {
        nextEl: this.nextTarget,
        prevEl: this.prevTarget,
      },
    });
  }
}
