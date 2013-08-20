cd

curl -O http://beta.quicklisp.org/quicklisp.lisp
sbcl --load quicklisp.lisp
(quicklisp-quickstart:install)
(ql:add-to-init-file)
(ql:update-client)
(ql:update-all-dists)
(ql:quickload "clx")
(ql:quickload "cl-ppcre")
(quit)

cd

mkdir -p tmp
cd tmp
git clone git://git.savannah.nongnu.org/stumpwm.git
cd stumpwm
autoconf
./configure
make
sudo make install

cd

sudo echo '[Desktop Entry]
Encoding=UTF-8
Name=StumpWM
Comment=This session logs you into StumpWM (a minimalistic window manager)
Exec=/usr/local/bin/stumpwm
Icon=
Type=Application
' > tmp.desktop

sudo cp tmp.desktop /usr/share/xsessions/stumpwm.desktop
