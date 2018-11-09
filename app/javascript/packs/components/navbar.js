const changeNavbar = () => {
  const navbar = document.querySelector('.navbar-wagon')
  const banner = document.querySelector('.banner')
  window.addEventListener('scroll', (event) => {
    if (window.scrollY >= window.innerHeight) {
      navbar.classList.add('navbar-white')
    } else {
      navbar.classList.remove('navbar-white')
    }
  });
}

export { changeNavbar }
