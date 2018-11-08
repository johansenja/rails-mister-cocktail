const changeNavbar = () => {
  const navbar = document.querySelector('.navbar-wagon')
  const banner = document.querySelector('.banner')
  window.addEventListener('scroll', (event) => {
    if (window.scrollY >= window.innerHeight && banner.classList) {
      navbar.classList.add('navbar-white')
    } else if (window.scrollY >= (window.innerHeight / 2)) {
      navbar.classList.add('navbar-white')
      console.log(banner)
    } else {
      navbar.classList.remove('navbar-white')
    }
  });
}

export { changeNavbar }
