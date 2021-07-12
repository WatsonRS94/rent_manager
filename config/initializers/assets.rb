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
)