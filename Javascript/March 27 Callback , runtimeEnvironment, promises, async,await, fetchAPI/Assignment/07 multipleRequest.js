async function multipleRequuest() {
  try {
    const response1 = await fetch(
      "https://jsonplaceholder.typicode.com/todos/1"
    );
    const response2 = await fetch(
      "https://jsonplaceholder.typicode.com/posts/1"
    );
    if (!response1.ok || !response2.ok) {
      throw new Error("Failed to fetch data form one of the APIs");
    }
    const data1 = await response1.json();
    const data2 = await response2.json();
    const data = { todo: data1, post: data2 };
    console.log(data);
  } catch (error) {
    console.error("Error:", error);
  }
}
multipleRequuest();
