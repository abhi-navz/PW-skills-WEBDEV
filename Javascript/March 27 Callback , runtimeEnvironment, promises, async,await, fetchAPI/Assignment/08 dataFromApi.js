async function fetchData() {
  try {
    const response = await fetch("https://jsonplaceholder.typicode.com/posts");
    if (!response.ok) {
      throw new Error("Unable to fetch data!!");
    }
    const data = await response.json();
    console.log(data);
  } catch (err) {
    console.error("Error:", err);
  }
}
fetchData();
