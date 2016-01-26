myApp.factory('filterTags', function() {
  return {

  displayButton: function(items) {
    return items.length === 0 ? false : true;
  },

  findMenuItems: function(currentMenu) {
    items = [];
    for (var section in currentMenu.sections) {
      for (var item in currentMenu.sections[section].items) {
        items.push(currentMenu.sections[section].items[item]);
      }
    }
    return items;
  },

  findFeatured: function(menuItems) {
    featured = [];
    angular.forEach(menuItems, function(menuItem){
      if (menuItem.featured === true) {
        featured.push(menuItem);
      }
    });
    return featured;
  },

  findPopular: function(menuItems) {
    liked = {};
    popular = [];
    trending = [];
    angular.forEach(menuItems, function(menuItem){
      if (menuItem.favorites.length > 0) {
        liked[menuItem.name] = menuItem.favorites.length;
      }
    });
    for (var like in liked) {
      popular.push([like, liked[like]]);
      popular.sort(function(a, b) {
        return b[1] - a[1];
      });
    }
    if (popular.length > 6) {
      popular = popular.slice(0, 5);
    }
    angular.forEach(menuItems, function(menuItem){
      popular.forEach(function(pop) {
        if (pop[0] === menuItem.name) {
          trending.push(menuItem);
        }
      });
    });
    return trending;
  },

  findUniqueTags: function(tagType, menuItems) {
    var tags = {};
    for (var type in tagType) {
      angular.forEach(menuItems, function(menuItem) {
        angular.forEach(menuItem[tagType[type]], function(tag) {
          tags[tag["name"]] = tagType[type];
        });
      });
    }
    return tags;
  },

  createTagFilters: function(uniqueTags) {
    var filters = [];
    for (var tag in uniqueTags) {
      filters.push({ type: uniqueTags[tag], name: tag, state: 0 });
    }
    return filters;
  },

  toggleTagState: function(tagFilter) {
    tagFilter.state = (tagFilter.state + 1) % 3;
  }
  };
})