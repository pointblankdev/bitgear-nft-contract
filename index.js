const fs = require("fs");
const metadata = require("./metadata.json");
const _ = require("lodash");

const idList = [];
const priceList = [];
const uriList = [];

const slot = {
  main_hand: [],
  off_hand: [],
  two_hand: [],
  head: [],
  neck: [],
  wrists: [],
  finger: [],
};

const basics = ["Stick", "Stone", "Coral", "Bone Shard"];
const mainHandTypes = [
  "Dagger",
  "Shortsword",
  "Longsword",
  "Scimitar",
  "Hand Axe",
  "Club",
  ...basics,
];
const offHandTypes = [
  "Buckler",
  "Kiteshield",
  "Tower Shield",
  "Dagger",
  "Shortsword",
  "Hand Axe",
  ...basics,
];
const twoHandTypes = [
  "Longsword",
  "Battleaxe",
  "Pickaxe",
  "Shortbow",
  "Longbow",
  "Compound Bow",
  "Crossbow",
];
const headTypes = ["Crown"];
const neckTypes = ["Amulet"];
const wristsTypes = ["Bracelet"];
const fingerTypes = ["Ring"];

metadata.forEach((gear) => {
  // console.log(gear);
  // const price = gear.mint_price.split(" ")[0];
  // priceList.push(`u${price}000000`);
  // uriList.push(`"${gear.mint_id}"`);
  const gearType = gear.attributes[0].value;

  if (mainHandTypes.includes(gearType)) {
    slot.main_hand.push(`u${gear.mint_id}`);
  }
  if (offHandTypes.includes(gearType)) {
    slot.off_hand.push(`u${gear.mint_id}`);
  }
  if (twoHandTypes.includes(gearType)) {
    slot.two_hand.push(`u${gear.mint_id}`);
  }
  if (headTypes.includes(gearType)) {
    slot.head.push(`u${gear.mint_id}`);
  }
  if (neckTypes.includes(gearType)) {
    slot.neck.push(`u${gear.mint_id}`);
  }
  if (wristsTypes.includes(gearType)) {
    slot.wrists.push(`u${gear.mint_id}`);
  }
  if (fingerTypes.includes(gearType)) {
    slot.finger.push(`u${gear.mint_id}`);
  }
});

// fs.writeFileSync(`out/prices.txt`, priceList.join(" "));
// fs.writeFileSync(`out/uris.txt`, uriList.join(" "));
console.log("MH", slot.main_hand.length);
fs.writeFileSync(`out/slots/main_hand.txt`, slot.main_hand.join(" "));
console.log("OH", slot.off_hand.length);
fs.writeFileSync(`out/slots/off_hand.txt`, slot.off_hand.join(" "));
console.log("TH", slot.two_hand.length);
fs.writeFileSync(`out/slots/two_hand.txt`, slot.two_hand.join(" "));
console.log("H", slot.head.length);
fs.writeFileSync(`out/slots/head.txt`, slot.head.join(" "));
console.log("N", slot.neck.length);
fs.writeFileSync(`out/slots/neck.txt`, slot.neck.join(" "));
console.log("W", slot.wrists.length);
fs.writeFileSync(`out/slots/wrists.txt`, slot.wrists.join(" "));
console.log("F", slot.finger.length);
fs.writeFileSync(`out/slots/finger.txt`, slot.finger.join(" "));
