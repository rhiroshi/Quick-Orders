import swal from 'sweetalert2'
import Rails from '@rails/ujs'

// document.addEventListener('turbolinks:load', function(){
//   swal.fire('hello world')
// })

Rails.confirm = function (message, element) {
  const swalWithBootstrap = swal.mixin({
    customClass: {
      confirmButton: 'btn btn-secondary',
      cancelButton: 'btn btn-warning'
    },
    buttonsStyling: false
  })


  swalWithBootstrap.fire({
    html: message,
    showCancelButton: true,
    confirmButtonText: 'Okay',
    cancelButtonText: 'Cancel'
  })
  .then((result) => {
    if (result.value) {
      console.log('sweetalert finished')
      element.removeAttribute('data-confirm')
      element.click()
    }
  })

}