const books = [
  {
    title: "The Sense of an Ending",
    author: "Julian Barnes",
    publicationYear: 2011,
  },
  {
    title: " NW: A Novel",
    author: " Zadie Smith",
    publicationYear: 2012,
  },
  {
    title: "Pride and Prejudice",
    author: "Jane Austen",
    publicationYear: 1813,
  },
  {
    title: "The Hunger Games",
    author: "Suzanne Collins",
    publicationYear: 2008,
  },
  {
    title: "Harry Potter and the Philosopher's Stone",
    author: "J.K. Rowling",
    publicationYear: 1997,
  },
  {
    title: "Gone Girl",
    author: "Gilian flynn",
    publicationYear: 2012,
  },
  {
    title: "It Ends with Us",
    author: "Colleen Hoover",
    publicationYear: 2022,
  },
];

// Filter out books published before 2010 and capitalize author names
const filteredBooks = books
  .filter((book) => book.publicationYear >= 2010) // it filters and excludes the books published before 2010
  .map((book) => ({ ...book, author: book.author.toUpperCase() })); // ...book makes a shallow copy of book objects.

console.log(filteredBooks);
