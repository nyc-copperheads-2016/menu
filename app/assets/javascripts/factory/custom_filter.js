myApp.filter('matchClickedItems', function() {
  return function(items, tagFilters) {

    var includes = tagFilters.filter(function(tag) {
      return tag.state === 1;
    });

    var excludes = tagFilters.filter(function(tag) {
      return tag.state === 2;
    });

    function hasProperty(item, propName, propValue) {
      if (!item[propName]) {
        console.log('missing prop ' + propName , item);
        return false;
      }
      var filtered = item[propName].filter(function(ing) {
        return ing.name === propValue;
      });
      return filtered.length > 0;
    }

    function hasIngredient(item, name) {
      return hasProperty(item, 'ingredients', name);
    }

    function hasDiet(item, name) {
      return hasProperty(item, 'diets', name);
    }

    function hasTaste(item, name) {
      return hasProperty(item, 'tastes', name);
    }


    function includeItem(item) {
      result = true;
      if (includes.length) {
        result = false;
        includes.forEach(function(inc) {
          result = result || hasIngredient(item, inc.name) || hasDiet(item, inc.name) || hasTaste(item, inc.name);
        });
      }
      if (result && excludes.length) {
        excludes.forEach(function(excl) {
          result = result && !(hasIngredient(item, excl.name) || hasDiet(item, excl.name) || hasTaste(item, excl.name));
        });
      }
      return result;
    }

    var filtered = [];
    filtered = items.filter(function(item){
      return includeItem(item);
    });
    return filtered;
  }
});
