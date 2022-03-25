import "jquery-bar-rating";
import $ from 'jquery';

// Change reviews to seperate path with new form & link review button in modal to new review path.
const initStarRating = () => {
  $('#review_authenticity').barrating({
    theme: 'css-stars'
  });
  $('#review_value').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
