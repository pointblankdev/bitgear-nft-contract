const fs = require("fs");
const metadata = require("./metadata.json");

const idList = [];
const priceList = [];
const uriList = [];

metadata.forEach((gear) => {
  console.log(gear);
  const price = gear.mint_price.split(" ")[0];
  priceList.push(`u${price}000000`);
  uriList.push(`"${gear.mint_id}"`);
});

fs.writeFileSync(`out/prices.txt`, priceList.join(" "));
fs.writeFileSync(`out/uris.txt`, uriList.join(" "));
