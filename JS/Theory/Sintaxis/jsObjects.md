# Accessing Nested Object Values in JavaScript

The structure you provided is a **JavaScript Object** that contains an **Array of Objects**. To access the data, you must navigate through the object's keys and the array's indices.

Assuming your data is assigned to a variable named `data`:

```javascript
const data = {
  Sheet1: [
    {
      'S. No.': 1,
      Category: 'Industry',
      Role: 'user',
    },
    {
      'S. No.': 2,
      Category: 'Industry',
      Role: 'user',
    }
  ]
};
```

1. Step-by-Step Access

Accessing an individual value requires a three-part process:

1.1. Access the ArrayFirst, use dot notation to access the array stored under the Sheet1 key.

```
data.Sheet1 
// Result: [ { /*...*/ }, { /*...*/ } ] (The array of objects)

```

1.2. Access a Specific Object (Item)
Next, use array indexing (starting at 0) to select a specific object within the array.

```
data.Sheet1[0] 
// Result: { 'S. No.': 1, Category: 'Industry', Role: 'user' } (The first item)
```

1.3. Access a Property Value
Finally, use the appropriate notation to retrieve the property's value from the object:

Dot Notation (.): Use for keys without spaces (e.g., Category, Role).

Bracket Notation ([]): Must be used for keys containing spaces or special characters (e.g., 'S. No.').

|Value to Access	|Code|	Result|
|---|---|---|
|First Item's Role|	data.Sheet1[0].Role|	'user'|
|Second Item's S. No.|	data.Sheet1[1]['S. No.']|	2|



| Header 1 | Header 2 | Header 3 |
|---|---|---|
| Row 1, Col 1 | Row 1, Col 2 | Row 1, Col 3 |
| Row 2, Col 1 | Row 2, Col 2 | Row 2, Col 3 |


2. Iterating Through All Data
To work with every item in the list, you must iterate over the Sheet1 array. The forEach() method is one of the cleanest ways to do this in modern JavaScript.

```
// Store the array for cleaner code
const sheetData = data.Sheet1;

sheetData.forEach(item => {
  // Use bracket notation for 'S. No.' due to the space
  const serialNumber = item['S. No.']; 
  
  // Use dot notation for Category and Role
  const category = item.Category;
  const role = item.Role;

  console.log(`${serialNumber}: ${category} - ${role}`);
});

/*
Output:
1: Industry - user
2: Industry - user
*/

```
