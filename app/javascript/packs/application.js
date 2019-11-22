import "bootstrap";
import Swal from 'sweetalert2';
import 'sweetalert2/dist/sweetalert2.min.css';

const paymentForm = document.getElementById('pay-btn');

if (paymentForm) {
  paymentForm.addEventListener('submit', (event) => {
    event.preventDefault();
    Swal.fire({
      title: 'Confirm payment?',
      text: 'Are you sure?',
      icon: 'warning',
      confirmButtonText: 'Pay',
      showCancelButton: true
    }).then((result) => {
      if (result.value) {
        event.target.submit();
      }
    })

  });
}
// $('a[data-popup]').on('click', function(e) { window.open($(this).attr('href')); e.preventDefault(); })
