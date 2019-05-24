const commonUtilitiesHelper = {
  getMostRecentEntityByCreationDate: entities =>
    entities && entities.reduce((prev, current) => (prev.created_on > current.created_on ? prev : current)),

  groupBy: (items, key) =>
    items &&
    items.reduce(
      (result, item) => ({
        ...result,
        [item[key]]: [...(result[item[key]] || []), item]
      }),
      {}
    ),

  flatten: (arrayItems, flattenedArray) =>
    arrayItems && arrayItems.map(task => task.map(arrayElement => flattenedArray.push(arrayElement)))
};

export default commonUtilitiesHelper;
