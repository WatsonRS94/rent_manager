# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

# Load Styles
Rails.application.config.assets.precompile += %w(
dashboard/css/pagination.css
home/fonts/icomoon/style.css
home/css/bootstrap.min.css
home/css/jquery-ui.css
home/css/owl.carousel.min.css
home/css/owl.theme.default.min.css
home/css/jquery.fancybox.min.css
home/css/bootstrap-datepicker.css
home/fonts/flaticon/font/flaticon.css
home/css/aos.css
home/css/style.css
dashboard/css/adminlte.min.css
dashboard/plugins/fontawesome-free/css/all.min.css
dashboard/plugins/icheck-bootstrap/icheck-bootstrap.min.css
dashboard/plugins/toastr/toastr.min.css
dashboard/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css
dashboard/plugins/bootstrap-slider/css/bootstrap-slider.min.css
dashboard/plugins/bootstrap-switch/css/bootstrap3/bootstrap-switch.min.css
dashboard/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css
dashboard/plugins/bs-stepper/css/bs-stepper.min.css
dashboard/plugins/daterangepicker/daterangepicker.css
dashboard/plugins/dropzone/dropzone.css
dashboard/plugins/select2/css/select2.min.css
dashboard/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css
)

# Load Scripts
Rails.application.config.assets.precompile += %w(
home/js/jquery-3.3.1.min.js
home/js/jquery-migrate-3.0.1.min.js
home/js/jquery-ui.js
home/js/popper.min.js
home/js/bootstrap.min.js
home/js/owl.carousel.min.js
home/js/jquery.stellar.min.js
home/js/jquery.countdown.min.js
home/js/bootstrap-datepicker.min.js
home/js/jquery.easing.1.3.js
home/js/aos.js
home/js/jquery.fancybox.min.js
home/js/jquery.sticky.js
home/js/main.js
dashboard/plugins/bootstrap/js/bootstrap.bundle.min.js
dashboard/plugins/jquery/jquery.min.js
dashboard/js/adminlte.min.js
dashboard/plugins/toastr/toastr.min.js
dashboard/plugins/jszip/jszip.min.js
dashboard/plugins/pdfmake/vfs_fonts.js
dashboard/plugins/pdfmake/pdfmake.min.js
dashboard/plugins/bs-custom-file-input/bs-custom-file-input.min.js
dashboard/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js
dashboard/plugins/bootstrap-slider/bootstrap-slider.min.js
dashboard/plugins/bootstrap-switch/js/bootstrap-switch.min.js
dashboard/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js
dashboard/plugins/bs-stepper/js/bs-stepper.min.js
dashboard/plugins/daterangepicker/daterangepicker.js
dashboard/plugins/dropzone/dropzone.js
dashboard/plugins/select2/js/select2.full.min.js
)