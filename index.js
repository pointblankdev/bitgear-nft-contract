const fs = require("fs");
const _ = require("lodash");
const csv = require("csvtojson");
const { toInteger } = require("lodash");
const metadata = require("./metadata.json");

const idList = [];
const priceList = [];
const uriList = [];

csv()
  .fromFile("./bitgear-data-Inventory.csv")
  .then((jsonObj) => {
    let count = 1;
    _.forEach(jsonObj, (item) => {
      let t = item["Primary Material"] === "Basic" ? 80 : 1;
      if (item["4982"] !== "x") {
        _.times(t, (i) => {
          const tokenId = toInteger(item["Gear ID"]) + i;
          const price = item["Final Price"].split(" ")[0];
          const uri = metadata
            .find((i) => toInteger(i.id) === toInteger(item["Gear ID"]))
            .image.split("bitgear")
            .pop()
            .split(".")[0];
          idList.push(`u${tokenId}`);
          priceList.push(`u${price}000000`);
          uriList.push(`"${uri}"`);
        });
      }
    });
    fs.writeFileSync(`list.txt`, idList.join(" "));
    fs.writeFileSync(`prices.txt`, priceList.join(" "));
    fs.writeFileSync(`uris.txt`, uriList.join(" "));
  });
