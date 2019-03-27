// Extract the domain name of a url
// e.g. github.com/BillMux -> github

function domainName(url){
  if (url.includes('www.')) {
    return url.split('.')[1];
  } else if (url.startsWith('http')) {
    return url.substring(url.indexOf('//') + 2, url.indexOf('.'))
  } else {
    return url.split('.')[0];
  };
}

console.log(domainName("http://google.com"), domainName("http://google.com") === "google");
console.log(domainName("http://google.co.jp"), domainName("http://google.co.jp") === "google");
console.log(domainName("www.xakep.ru"), domainName("www.xakep.ru") === "xakep");
console.log(domainName("https://youtube.com"), domainName("https://youtube.com") === "youtube");
console.log(domainName("dkewjk.jp"), domainName("dkewjk.jp") === "dkewjk");
console.log(domainName("wwwebsite.com"), domainName("wwwebsite.com") === "wwwebsite");
console.log(domainName("httpie.com"), domainName("httpie.com") === "httpie");
