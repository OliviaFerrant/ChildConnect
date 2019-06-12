import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('case-address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };