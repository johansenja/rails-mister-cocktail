const smoothScroll = () => {
  const button = document.getElementById('browse-button');
  if (button) {
    button.addEventListener('click', (event) => {
      event.preventDefault();
      const scrollY = window.innerHeight;
      window.scrollTo({
        top: scrollY,
        left: 0,
        behavior: 'smooth'
      });
    });
  }
};

export { smoothScroll };
