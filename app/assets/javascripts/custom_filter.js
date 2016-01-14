myApp.filter('matchClickedItems', function() {
  return function(items, tagFilters) {

    // Checks for tags that are clicked once aka inclusive search
    var includes = tagFilters.filter(function(tag) {
      return tag.state === 1;
    });

    // Checks for tags that are clicked twice aka exclusive search
    var excludes = tagFilters.filter(function(tag) {
      return tag.state === 2;
    });

    // Checks if an item
    function hasProperty(item, propName, propValue) {
      // If no such tag type exists for an item, return false
      if (!item[propName]) {
        console.log('missing prop ' + propName , item);
        return false;
      }
      // Otherwise, checks in a tag type for a tag name that is the same as compared tag name
      var filtered = item[propName].filter(function(ing) {
        // console.log('ing', ing);
        // console.log('pv', propValue);
        return ing.name === propValue;
      });
      // Return if filtered if any found
      return filtered.length > 0;
    }

    // Checks if an item has a tag in the ingredients tag type
    function hasIngredient(item, name) {
      return hasProperty(item, 'ingredients', name);
    }

    // Checks if an item has a tag in the diets tag type
    function hasDiet(item, name) {
      return hasProperty(item, 'diets', name);
    }

    // Checks if an item has a tag in the tastes tag type
    function hasTaste(item, name) {
      return hasProperty(item, 'tastes', name);
    }


    function includeItem(item) {
      // Default to true aka always show item
      result = true;
      // If a tag is selected for inclusive search,
      if (includes.length) {
        // Default to false aka don't show item
        result = false;
        // Iterate through each inclusive tag, and search in each tag type
        includes.forEach(function(inc) {
          // Check if item has that tag by checking within the tagtype of the item
          result = result || hasIngredient(item, inc.name) || hasDiet(item, inc.name) || hasTaste(item, inc.name);
        });
      }
      // If the item does have the tag, and there are other tags marked for excluding items
      if (result && excludes.length) {
        // Check to see if the item should be excluded by any other filter
        excludes.forEach(function(excl) {
          result = result && !(hasIngredient(item, excl.name) || hasDiet(item, excl.name) || hasTaste(item, excl.name));
        });
      }
      return result;
    }

    var filtered = [];
    // Take the items in the ng-repeat and filter them
    filtered = items.filter(function(item){
      return includeItem(item);
    });
    return filtered;
  }
});
