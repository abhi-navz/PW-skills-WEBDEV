// //Write a program using a regex that matches valid URLs. Valid URLs should start with either http:// or https://,
// followed by one or more letters, digits, or special characters, followed by a dot, followed by one or more letters.
// Print a message indicating if the input matches the conditions or not.

const urlRegex = /^(https?:\/\/)[\w.\-]+[a-zA-Z]$/;
// ^ denotes the start, ?after s makes s optional, \/ matches backlashes, $ denotes the end.

function checkUrl(url) {
  if (urlRegex.test(url)) {
    console.log(`${url} is a valid URL.`);
  } else {
    console.log(`${url} is not a valid URL.`);
  }
}

// Testing some URLs
checkUrl("http://www.example.com");
checkUrl("https://www.example.com/path/to/file.html");
checkUrl("ftp://example.com");
checkUrl("https://www.example..com");
checkUrl("http://www.example.com?query=1");
