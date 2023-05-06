const linkedinRegex =
  /^https:\/\/www\.linkedin\.com\/in\/[a-zA-Z0-9_-]{5,30}[a-zA-Z0-9]$/;

function checkLinkedinUrl(url) {
  if (linkedinRegex.test(url)) {
    console.log(`${url} is a valid LinkedIn profile URL.`);
  } else {
    console.log(`${url} is not a valid LinkedIn profile URL.`);
  }
}

// Test some URLs
checkLinkedinUrl("https://www.linkedin.com/in/johndoe");
checkLinkedinUrl("https://www.linkedin.com/in/john-doe");
checkLinkedinUrl("https://www.linkedin.com/in/jo#hn_doe");
checkLinkedinUrl("https://www.linkedin.com/in/john-doe-123");
checkLinkedinUrl("https://www.linkedin.com/in/123john-doe");
checkLinkedinUrl(
  "https://www.linkedin.com/in/john-doe-1230000000000000009999999999877"
);
checkLinkedinUrl("https://www.linkedin.com/in/john@doe");
