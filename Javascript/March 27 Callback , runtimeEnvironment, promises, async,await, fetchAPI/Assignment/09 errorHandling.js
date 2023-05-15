async function fetchData() {
  try {
    const response = await fetch(
      "https://jsonplaceholder.typicode.com/posts/123456789"
    );
    if (!response.ok) {
      throw new Error("Error fetching data!!");
    }
    const data = await response.json();
    console.log(data);
  } catch (err) {
    console.error(err);
  }
}
fetchData();
