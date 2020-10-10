# Maintainer: asakura42
pkgname=matrix-commander
pkgver=1
pkgrel=1
pkgdesc="Matrix-commander - cli matrix tool"
arch=('any')
url="https://github.com/8go/matrix-commander"
license=('GPL3')
depends=('python-magic' 'python-notify2' 'python-matrix-nio' 'python-pillow')
source=('https://raw.githubusercontent.com/8go/matrix-commander/master/matrix-commander.py')
md5sums=('7e18f121b9eb7ef834c3f7c591454082')

package() {
	install -Dm755 "$srcdir"/matrix-commander.py "$pkgdir"/usr/bin/matrix-commander
}
