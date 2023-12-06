class Country {
  String name;
  String alpha2Code;
  String alpha3Code;
  String numericCode;

  Country(
      {required this.name,
      required this.alpha2Code,
      required this.alpha3Code,
      required this.numericCode});
}

class Countries {
  final List<Country> _countries;

  Countries()
      : _countries = [
          Country(
              name: "United Kingdom",
              alpha2Code: "GB",
              alpha3Code: "GBR",
              numericCode: "826"),
          Country(
              name: "United States of America",
              alpha2Code: "US",
              alpha3Code: "USA",
              numericCode: "840"),
          Country(
              name: "Afghanistan",
              alpha2Code: "AF",
              alpha3Code: "AFG",
              numericCode: "004"),
          Country(
              name: "Albania",
              alpha2Code: "AL",
              alpha3Code: "ALB",
              numericCode: "008"),
          Country(
              name: "Algeria",
              alpha2Code: "DZ",
              alpha3Code: "DZA",
              numericCode: "012"),
          Country(
              name: "American Samoa",
              alpha2Code: "AS",
              alpha3Code: "ASM",
              numericCode: "016"),
          Country(
              name: "Andorra",
              alpha2Code: "AD",
              alpha3Code: "AND",
              numericCode: "020"),
          Country(
              name: "Angola",
              alpha2Code: "AO",
              alpha3Code: "AGO",
              numericCode: "024"),
          Country(
              name: "Anguilla",
              alpha2Code: "AI",
              alpha3Code: "AIA",
              numericCode: "660"),
          Country(
              name: "Antarctica",
              alpha2Code: "AQ",
              alpha3Code: "ATA",
              numericCode: "010"),
          Country(
              name: "Antigua and Barbuda",
              alpha2Code: "AG",
              alpha3Code: "ATG",
              numericCode: "028"),
          Country(
              name: "Argentina",
              alpha2Code: "AR",
              alpha3Code: "ARG",
              numericCode: "032"),
          Country(
              name: "Armenia",
              alpha2Code: "AM",
              alpha3Code: "ARM",
              numericCode: "051"),
          Country(
              name: "Aruba",
              alpha2Code: "AW",
              alpha3Code: "ABW",
              numericCode: "533"),
          Country(
              name: "Australia",
              alpha2Code: "AU",
              alpha3Code: "AUS",
              numericCode: "036"),
          Country(
              name: "Austria",
              alpha2Code: "AT",
              alpha3Code: "AUT",
              numericCode: "040"),
          Country(
              name: "Azerbaijan",
              alpha2Code: "AZ",
              alpha3Code: "AZE",
              numericCode: "031"),
          Country(
              name: "Bahamas",
              alpha2Code: "BS",
              alpha3Code: "BHS",
              numericCode: "044"),
          Country(
              name: "Bahrain",
              alpha2Code: "BH",
              alpha3Code: "BHR",
              numericCode: "048"),
          Country(
              name: "Bangladesh",
              alpha2Code: "BD",
              alpha3Code: "BGD",
              numericCode: "050"),
          Country(
              name: "Barbados",
              alpha2Code: "BB",
              alpha3Code: "BRB",
              numericCode: "052"),
          Country(
              name: "Belarus",
              alpha2Code: "BY",
              alpha3Code: "BLR",
              numericCode: "112"),
          Country(
              name: "Belgium",
              alpha2Code: "BE",
              alpha3Code: "BEL",
              numericCode: "056"),
          Country(
              name: "Belize",
              alpha2Code: "BZ",
              alpha3Code: "BLZ",
              numericCode: "084"),
          Country(
              name: "Benin",
              alpha2Code: "BJ",
              alpha3Code: "BEN",
              numericCode: "204"),
          Country(
              name: "Bermuda",
              alpha2Code: "BM",
              alpha3Code: "BMU",
              numericCode: "060"),
          Country(
              name: "Bhutan",
              alpha2Code: "BT",
              alpha3Code: "BTN",
              numericCode: "064"),
          Country(
              name: "Bolivia (Plurinational State of)",
              alpha2Code: "BO",
              alpha3Code: "BOL",
              numericCode: "068"),
          Country(
              name: "Bonaire, Sint Eustatius and Saba",
              alpha2Code: "BQ",
              alpha3Code: "BES",
              numericCode: "535"),
          Country(
              name: "Bosnia and Herzegovina",
              alpha2Code: "BA",
              alpha3Code: "BIH",
              numericCode: "070"),
          Country(
              name: "Botswana",
              alpha2Code: "BW",
              alpha3Code: "BWA",
              numericCode: "072"),
          Country(
              name: "Bouvet Island",
              alpha2Code: "BV",
              alpha3Code: "BVT",
              numericCode: "074"),
          Country(
              name: "Brazil",
              alpha2Code: "BR",
              alpha3Code: "BRA",
              numericCode: "076"),
          Country(
              name: "British Indian Ocean Territory",
              alpha2Code: "IO",
              alpha3Code: "IOT",
              numericCode: "086"),
          Country(
              name: "Brunei Darussalam",
              alpha2Code: "BN",
              alpha3Code: "BRN",
              numericCode: "096"),
          Country(
              name: "Bulgaria",
              alpha2Code: "BG",
              alpha3Code: "BGR",
              numericCode: "100"),
          Country(
              name: "Burkina Faso",
              alpha2Code: "BF",
              alpha3Code: "BFA",
              numericCode: "854"),
          Country(
              name: "Burundi",
              alpha2Code: "BI",
              alpha3Code: "BDI",
              numericCode: "108"),
          Country(
              name: "Cabo Verde",
              alpha2Code: "CV",
              alpha3Code: "CPV",
              numericCode: "132"),
          Country(
              name: "Cambodia",
              alpha2Code: "KH",
              alpha3Code: "KHM",
              numericCode: "116"),
          Country(
              name: "Cameroon",
              alpha2Code: "CM",
              alpha3Code: "CMR",
              numericCode: "120"),
          Country(
              name: "Canada",
              alpha2Code: "CA",
              alpha3Code: "CAN",
              numericCode: "124"),
          Country(
              name: "Cayman Islands",
              alpha2Code: "KY",
              alpha3Code: "CYM",
              numericCode: "136"),
          Country(
              name: "Central African Republic",
              alpha2Code: "CF",
              alpha3Code: "CAF",
              numericCode: "140"),
          Country(
              name: "Chad",
              alpha2Code: "TD",
              alpha3Code: "TCD",
              numericCode: "148"),
          Country(
              name: "Chile",
              alpha2Code: "CL",
              alpha3Code: "CHL",
              numericCode: "152"),
          Country(
              name: "China",
              alpha2Code: "CN",
              alpha3Code: "CHN",
              numericCode: "156"),
          Country(
              name: "Christmas Island",
              alpha2Code: "CX",
              alpha3Code: "CXR",
              numericCode: "162"),
          Country(
              name: "Cocos (Keeling) Islands",
              alpha2Code: "CC",
              alpha3Code: "CCK",
              numericCode: "166"),
          Country(
              name: "Colombia",
              alpha2Code: "CO",
              alpha3Code: "COL",
              numericCode: "170"),
          Country(
              name: "Comoros",
              alpha2Code: "KM",
              alpha3Code: "COM",
              numericCode: "174"),
          Country(
              name: "Congo",
              alpha2Code: "CD",
              alpha3Code: "COD",
              numericCode: "180"),
          Country(
              name: "Congo",
              alpha2Code: "CG",
              alpha3Code: "COG",
              numericCode: "178"),
          Country(
              name: "Cook Islands",
              alpha2Code: "CK",
              alpha3Code: "COK",
              numericCode: "184"),
          Country(
              name: "Costa Rica",
              alpha2Code: "CR",
              alpha3Code: "CRI",
              numericCode: "188"),
          Country(
              name: "Croatia",
              alpha2Code: "HR",
              alpha3Code: "HRV",
              numericCode: "191"),
          Country(
              name: "Cuba",
              alpha2Code: "CU",
              alpha3Code: "CUB",
              numericCode: "192"),
          Country(
              name: "Curaçao",
              alpha2Code: "CW",
              alpha3Code: "CUW",
              numericCode: "531"),
          Country(
              name: "Cyprus",
              alpha2Code: "CY",
              alpha3Code: "CYP",
              numericCode: "196"),
          Country(
              name: "Czechia",
              alpha2Code: "CZ",
              alpha3Code: "CZE",
              numericCode: "203"),
          Country(
              name: "Côte d'Ivoire",
              alpha2Code: "CI",
              alpha3Code: "CIV",
              numericCode: "384"),
          Country(
              name: "Denmark",
              alpha2Code: "DK",
              alpha3Code: "DNK",
              numericCode: "208"),
          Country(
              name: "Djibouti",
              alpha2Code: "DJ",
              alpha3Code: "DJI",
              numericCode: "262"),
          Country(
              name: "Dominica",
              alpha2Code: "DM",
              alpha3Code: "DMA",
              numericCode: "212"),
          Country(
              name: "Dominican Republic",
              alpha2Code: "DO",
              alpha3Code: "DOM",
              numericCode: "214"),
          Country(
              name: "Ecuador",
              alpha2Code: "EC",
              alpha3Code: "ECU",
              numericCode: "218"),
          Country(
              name: "Egypt",
              alpha2Code: "EG",
              alpha3Code: "EGY",
              numericCode: "818"),
          Country(
              name: "El Salvador",
              alpha2Code: "SV",
              alpha3Code: "SLV",
              numericCode: "222"),
          Country(
              name: "Equatorial Guinea",
              alpha2Code: "GQ",
              alpha3Code: "GNQ",
              numericCode: "226"),
          Country(
              name: "Eritrea",
              alpha2Code: "ER",
              alpha3Code: "ERI",
              numericCode: "232"),
          Country(
              name: "Estonia",
              alpha2Code: "EE",
              alpha3Code: "EST",
              numericCode: "233"),
          Country(
              name: "Eswatini",
              alpha2Code: "SZ",
              alpha3Code: "SWZ",
              numericCode: "748"),
          Country(
              name: "Ethiopia",
              alpha2Code: "ET",
              alpha3Code: "ETH",
              numericCode: "231"),
          Country(
              name: "Falkland Islands [Malvinas]",
              alpha2Code: "FK",
              alpha3Code: "FLK",
              numericCode: "238"),
          Country(
              name: "Faroe Islands",
              alpha2Code: "FO",
              alpha3Code: "FRO",
              numericCode: "234"),
          Country(
              name: "Fiji",
              alpha2Code: "FJ",
              alpha3Code: "FJI",
              numericCode: "242"),
          Country(
              name: "Finland",
              alpha2Code: "FI",
              alpha3Code: "FIN",
              numericCode: "246"),
          Country(
              name: "France",
              alpha2Code: "FR",
              alpha3Code: "FRA",
              numericCode: "250"),
          Country(
              name: "French Guiana",
              alpha2Code: "GF",
              alpha3Code: "GUF",
              numericCode: "254"),
          Country(
              name: "French Polynesia",
              alpha2Code: "PF",
              alpha3Code: "PYF",
              numericCode: "258"),
          Country(
              name: "French Southern Territories",
              alpha2Code: "TF",
              alpha3Code: "ATF",
              numericCode: "260"),
          Country(
              name: "Gabon",
              alpha2Code: "GA",
              alpha3Code: "GAB",
              numericCode: "266"),
          Country(
              name: "Gambia",
              alpha2Code: "GM",
              alpha3Code: "GMB",
              numericCode: "270"),
          Country(
              name: "Georgia",
              alpha2Code: "GE",
              alpha3Code: "GEO",
              numericCode: "268"),
          Country(
              name: "Germany",
              alpha2Code: "DE",
              alpha3Code: "DEU",
              numericCode: "276"),
          Country(
              name: "Ghana",
              alpha2Code: "GH",
              alpha3Code: "GHA",
              numericCode: "288"),
          Country(
              name: "Gibraltar",
              alpha2Code: "GI",
              alpha3Code: "GIB",
              numericCode: "292"),
          Country(
              name: "Greece",
              alpha2Code: "GR",
              alpha3Code: "GRC",
              numericCode: "300"),
          Country(
              name: "Greenland",
              alpha2Code: "GL",
              alpha3Code: "GRL",
              numericCode: "304"),
          Country(
              name: "Grenada",
              alpha2Code: "GD",
              alpha3Code: "GRD",
              numericCode: "308"),
          Country(
              name: "Guadeloupe",
              alpha2Code: "GP",
              alpha3Code: "GLP",
              numericCode: "312"),
          Country(
              name: "Guam",
              alpha2Code: "GU",
              alpha3Code: "GUM",
              numericCode: "316"),
          Country(
              name: "Guatemala",
              alpha2Code: "GT",
              alpha3Code: "GTM",
              numericCode: "320"),
          Country(
              name: "Guernsey",
              alpha2Code: "GG",
              alpha3Code: "GGY",
              numericCode: "831"),
          Country(
              name: "Guinea",
              alpha2Code: "GN",
              alpha3Code: "GIN",
              numericCode: "324"),
          Country(
              name: "Guinea-Bissau",
              alpha2Code: "GW",
              alpha3Code: "GNB",
              numericCode: "624"),
          Country(
              name: "Guyana",
              alpha2Code: "GY",
              alpha3Code: "GUY",
              numericCode: "328"),
          Country(
              name: "Haiti",
              alpha2Code: "HT",
              alpha3Code: "HTI",
              numericCode: "332"),
          Country(
              name: "Heard Island and McDonald Islands",
              alpha2Code: "HM",
              alpha3Code: "HMD",
              numericCode: "334"),
          Country(
              name: "Holy See",
              alpha2Code: "VA",
              alpha3Code: "VAT",
              numericCode: "336"),
          Country(
              name: "Honduras",
              alpha2Code: "HN",
              alpha3Code: "HND",
              numericCode: "340"),
          Country(
              name: "Hong Kong",
              alpha2Code: "HK",
              alpha3Code: "HKG",
              numericCode: "344"),
          Country(
              name: "Hungary",
              alpha2Code: "HU",
              alpha3Code: "HUN",
              numericCode: "348"),
          Country(
              name: "Iceland",
              alpha2Code: "IS",
              alpha3Code: "ISL",
              numericCode: "352"),
          Country(
              name: "India",
              alpha2Code: "IN",
              alpha3Code: "IND",
              numericCode: "356"),
          Country(
              name: "Indonesia",
              alpha2Code: "ID",
              alpha3Code: "IDN",
              numericCode: "360"),
          Country(
              name: "Iran",
              alpha2Code: "IR",
              alpha3Code: "IRN",
              numericCode: "364"),
          Country(
              name: "Iraq",
              alpha2Code: "IQ",
              alpha3Code: "IRQ",
              numericCode: "368"),
          Country(
              name: "Ireland",
              alpha2Code: "IE",
              alpha3Code: "IRL",
              numericCode: "372"),
          Country(
              name: "Isle of Man",
              alpha2Code: "IM",
              alpha3Code: "IMN",
              numericCode: "833"),
          Country(
              name: "Israel",
              alpha2Code: "IL",
              alpha3Code: "ISR",
              numericCode: "376"),
          Country(
              name: "Italy",
              alpha2Code: "IT",
              alpha3Code: "ITA",
              numericCode: "380"),
          Country(
              name: "Jamaica",
              alpha2Code: "JM",
              alpha3Code: "JAM",
              numericCode: "388"),
          Country(
              name: "Japan",
              alpha2Code: "JP",
              alpha3Code: "JPN",
              numericCode: "392"),
          Country(
              name: "Jersey",
              alpha2Code: "JE",
              alpha3Code: "JEY",
              numericCode: "832"),
          Country(
              name: "Jordan",
              alpha2Code: "JO",
              alpha3Code: "JOR",
              numericCode: "400"),
          Country(
              name: "Kazakhstan",
              alpha2Code: "KZ",
              alpha3Code: "KAZ",
              numericCode: "398"),
          Country(
              name: "Kenya",
              alpha2Code: "KE",
              alpha3Code: "KEN",
              numericCode: "404"),
          Country(
              name: "Kiribati",
              alpha2Code: "KI",
              alpha3Code: "KIR",
              numericCode: "296"),
          Country(
              name: "Korea",
              alpha2Code: "KP",
              alpha3Code: "PRK",
              numericCode: "408"),
          Country(
              name: "Korea (the Republic of)",
              alpha2Code: "KR",
              alpha3Code: "KOR",
              numericCode: "410"),
          Country(
              name: "Kuwait",
              alpha2Code: "KW",
              alpha3Code: "KWT",
              numericCode: "414"),
          Country(
              name: "Kyrgyzstan",
              alpha2Code: "KG",
              alpha3Code: "KGZ",
              numericCode: "417"),
          Country(
              name: "Lao People's Democratic Republic",
              alpha2Code: "LA",
              alpha3Code: "LAO",
              numericCode: "418"),
          Country(
              name: "Latvia",
              alpha2Code: "LV",
              alpha3Code: "LVA",
              numericCode: "428"),
          Country(
              name: "Lebanon",
              alpha2Code: "LB",
              alpha3Code: "LBN",
              numericCode: "422"),
          Country(
              name: "Lesotho",
              alpha2Code: "LS",
              alpha3Code: "LSO",
              numericCode: "426"),
          Country(
              name: "Liberia",
              alpha2Code: "LR",
              alpha3Code: "LBR",
              numericCode: "430"),
          Country(
              name: "Libya",
              alpha2Code: "LY",
              alpha3Code: "LBY",
              numericCode: "434"),
          Country(
              name: "Liechtenstein",
              alpha2Code: "LI",
              alpha3Code: "LIE",
              numericCode: "438"),
          Country(
              name: "Lithuania",
              alpha2Code: "LT",
              alpha3Code: "LTU",
              numericCode: "440"),
          Country(
              name: "Luxembourg",
              alpha2Code: "LU",
              alpha3Code: "LUX",
              numericCode: "442"),
          Country(
              name: "Macao",
              alpha2Code: "MO",
              alpha3Code: "MAC",
              numericCode: "446"),
          Country(
              name: "Madagascar",
              alpha2Code: "MG",
              alpha3Code: "MDG",
              numericCode: "450"),
          Country(
              name: "Malawi",
              alpha2Code: "MW",
              alpha3Code: "MWI",
              numericCode: "454"),
          Country(
              name: "Malaysia",
              alpha2Code: "MY",
              alpha3Code: "MYS",
              numericCode: "458"),
          Country(
              name: "Maldives",
              alpha2Code: "MV",
              alpha3Code: "MDV",
              numericCode: "462"),
          Country(
              name: "Mali",
              alpha2Code: "ML",
              alpha3Code: "MLI",
              numericCode: "466"),
          Country(
              name: "Malta",
              alpha2Code: "MT",
              alpha3Code: "MLT",
              numericCode: "470"),
          Country(
              name: "Marshall Islands",
              alpha2Code: "MH",
              alpha3Code: "MHL",
              numericCode: "584"),
          Country(
              name: "Martinique",
              alpha2Code: "MQ",
              alpha3Code: "MTQ",
              numericCode: "474"),
          Country(
              name: "Mauritania",
              alpha2Code: "MR",
              alpha3Code: "MRT",
              numericCode: "478"),
          Country(
              name: "Mauritius",
              alpha2Code: "MU",
              alpha3Code: "MUS",
              numericCode: "480"),
          Country(
              name: "Mayotte",
              alpha2Code: "YT",
              alpha3Code: "MYT",
              numericCode: "175"),
          Country(
              name: "Mexico",
              alpha2Code: "MX",
              alpha3Code: "MEX",
              numericCode: "484"),
          Country(
              name: "Micronesia (Federated States of)",
              alpha2Code: "FM",
              alpha3Code: "FSM",
              numericCode: "583"),
          Country(
              name: "Moldova (the Republic of)",
              alpha2Code: "MD",
              alpha3Code: "MDA",
              numericCode: "498"),
          Country(
              name: "Monaco",
              alpha2Code: "MC",
              alpha3Code: "MCO",
              numericCode: "492"),
          Country(
              name: "Mongolia",
              alpha2Code: "MN",
              alpha3Code: "MNG",
              numericCode: "496"),
          Country(
              name: "Montenegro",
              alpha2Code: "ME",
              alpha3Code: "MNE",
              numericCode: "499"),
          Country(
              name: "Montserrat",
              alpha2Code: "MS",
              alpha3Code: "MSR",
              numericCode: "500"),
          Country(
              name: "Morocco",
              alpha2Code: "MA",
              alpha3Code: "MAR",
              numericCode: "504"),
          Country(
              name: "Mozambique",
              alpha2Code: "MZ",
              alpha3Code: "MOZ",
              numericCode: "508"),
          Country(
              name: "Myanmar",
              alpha2Code: "MM",
              alpha3Code: "MMR",
              numericCode: "104"),
          Country(
              name: "Namibia",
              alpha2Code: "NA",
              alpha3Code: "NAM",
              numericCode: "516"),
          Country(
              name: "Nauru",
              alpha2Code: "NR",
              alpha3Code: "NRU",
              numericCode: "520"),
          Country(
              name: "Nepal",
              alpha2Code: "NP",
              alpha3Code: "NPL",
              numericCode: "524"),
          Country(
              name: "Netherlands",
              alpha2Code: "NL",
              alpha3Code: "NLD",
              numericCode: "528"),
          Country(
              name: "New Caledonia",
              alpha2Code: "NC",
              alpha3Code: "NCL",
              numericCode: "540"),
          Country(
              name: "New Zealand",
              alpha2Code: "NZ",
              alpha3Code: "NZL",
              numericCode: "554"),
          Country(
              name: "Nicaragua",
              alpha2Code: "NI",
              alpha3Code: "NIC",
              numericCode: "558"),
          Country(
              name: "Niger",
              alpha2Code: "NE",
              alpha3Code: "NER",
              numericCode: "562"),
          Country(
              name: "Nigeria",
              alpha2Code: "NG",
              alpha3Code: "NGA",
              numericCode: "566"),
          Country(
              name: "Niue",
              alpha2Code: "NU",
              alpha3Code: "NIU",
              numericCode: "570"),
          Country(
              name: "Norfolk Island",
              alpha2Code: "NF",
              alpha3Code: "NFK",
              numericCode: "574"),
          Country(
              name: "Northern Mariana Islands",
              alpha2Code: "MP",
              alpha3Code: "MNP",
              numericCode: "580"),
          Country(
              name: "Norway",
              alpha2Code: "NO",
              alpha3Code: "NOR",
              numericCode: "578"),
          Country(
              name: "Oman",
              alpha2Code: "OM",
              alpha3Code: "OMN",
              numericCode: "512"),
          Country(
              name: "Pakistan",
              alpha2Code: "PK",
              alpha3Code: "PAK",
              numericCode: "586"),
          Country(
              name: "Palau",
              alpha2Code: "PW",
              alpha3Code: "PLW",
              numericCode: "585"),
          Country(
              name: "Palestine",
              alpha2Code: "PS",
              alpha3Code: "PSE",
              numericCode: "275"),
          Country(
              name: "Panama",
              alpha2Code: "PA",
              alpha3Code: "PAN",
              numericCode: "591"),
          Country(
              name: "Papua New Guinea",
              alpha2Code: "PG",
              alpha3Code: "PNG",
              numericCode: "598"),
          Country(
              name: "Paraguay",
              alpha2Code: "PY",
              alpha3Code: "PRY",
              numericCode: "600"),
          Country(
              name: "Peru",
              alpha2Code: "PE",
              alpha3Code: "PER",
              numericCode: "604"),
          Country(
              name: "Philippines",
              alpha2Code: "PH",
              alpha3Code: "PHL",
              numericCode: "608"),
          Country(
              name: "Pitcairn",
              alpha2Code: "PN",
              alpha3Code: "PCN",
              numericCode: "612"),
          Country(
              name: "Poland",
              alpha2Code: "PL",
              alpha3Code: "POL",
              numericCode: "616"),
          Country(
              name: "Portugal",
              alpha2Code: "PT",
              alpha3Code: "PRT",
              numericCode: "620"),
          Country(
              name: "Puerto Rico",
              alpha2Code: "PR",
              alpha3Code: "PRI",
              numericCode: "630"),
          Country(
              name: "Qatar",
              alpha2Code: "QA",
              alpha3Code: "QAT",
              numericCode: "634"),
          Country(
              name: "Republic of North Macedonia",
              alpha2Code: "MK",
              alpha3Code: "MKD",
              numericCode: "807"),
          Country(
              name: "Romania",
              alpha2Code: "RO",
              alpha3Code: "ROU",
              numericCode: "642"),
          Country(
              name: "Russian Federation",
              alpha2Code: "RU",
              alpha3Code: "RUS",
              numericCode: "643"),
          Country(
              name: "Rwanda",
              alpha2Code: "RW",
              alpha3Code: "RWA",
              numericCode: "646"),
          Country(
              name: "Réunion",
              alpha2Code: "RE",
              alpha3Code: "REU",
              numericCode: "638"),
          Country(
              name: "Saint Barthélemy",
              alpha2Code: "BL",
              alpha3Code: "BLM",
              numericCode: "652"),
          Country(
              name: "Saint Helena, Ascension and Tristan da Cunha",
              alpha2Code: "SH",
              alpha3Code: "SHN",
              numericCode: "654"),
          Country(
              name: "Saint Kitts and Nevis",
              alpha2Code: "KN",
              alpha3Code: "KNA",
              numericCode: "659"),
          Country(
              name: "Saint Lucia",
              alpha2Code: "LC",
              alpha3Code: "LCA",
              numericCode: "662"),
          Country(
              name: "Saint Martin (French part)",
              alpha2Code: "MF",
              alpha3Code: "MAF",
              numericCode: "663"),
          Country(
              name: "Saint Pierre and Miquelon",
              alpha2Code: "PM",
              alpha3Code: "SPM",
              numericCode: "666"),
          Country(
              name: "Saint Vincent and the Grenadines",
              alpha2Code: "VC",
              alpha3Code: "VCT",
              numericCode: "670"),
          Country(
              name: "Samoa",
              alpha2Code: "WS",
              alpha3Code: "WSM",
              numericCode: "882"),
          Country(
              name: "San Marino",
              alpha2Code: "SM",
              alpha3Code: "SMR",
              numericCode: "674"),
          Country(
              name: "Sao Tome and Principe",
              alpha2Code: "ST",
              alpha3Code: "STP",
              numericCode: "678"),
          Country(
              name: "Saudi Arabia",
              alpha2Code: "SA",
              alpha3Code: "SAU",
              numericCode: "682"),
          Country(
              name: "Senegal",
              alpha2Code: "SN",
              alpha3Code: "SEN",
              numericCode: "686"),
          Country(
              name: "Serbia",
              alpha2Code: "RS",
              alpha3Code: "SRB",
              numericCode: "688"),
          Country(
              name: "Seychelles",
              alpha2Code: "SC",
              alpha3Code: "SYC",
              numericCode: "690"),
          Country(
              name: "Sierra Leone",
              alpha2Code: "SL",
              alpha3Code: "SLE",
              numericCode: "694"),
          Country(
              name: "Singapore",
              alpha2Code: "SG",
              alpha3Code: "SGP",
              numericCode: "702"),
          Country(
              name: "Sint Maarten (Dutch part)",
              alpha2Code: "SX",
              alpha3Code: "SXM",
              numericCode: "534"),
          Country(
              name: "Slovakia",
              alpha2Code: "SK",
              alpha3Code: "SVK",
              numericCode: "703"),
          Country(
              name: "Slovenia",
              alpha2Code: "SI",
              alpha3Code: "SVN",
              numericCode: "705"),
          Country(
              name: "Solomon Islands",
              alpha2Code: "SB",
              alpha3Code: "SLB",
              numericCode: "090"),
          Country(
              name: "Somalia",
              alpha2Code: "SO",
              alpha3Code: "SOM",
              numericCode: "706"),
          Country(
              name: "South Africa",
              alpha2Code: "ZA",
              alpha3Code: "ZAF",
              numericCode: "710"),
          Country(
              name: "South Georgia and the South Sandwich Islands",
              alpha2Code: "GS",
              alpha3Code: "SGS",
              numericCode: "239"),
          Country(
              name: "South Sudan",
              alpha2Code: "SS",
              alpha3Code: "SSD",
              numericCode: "728"),
          Country(
              name: "Spain",
              alpha2Code: "ES",
              alpha3Code: "ESP",
              numericCode: "724"),
          Country(
              name: "Sri Lanka",
              alpha2Code: "LK",
              alpha3Code: "LKA",
              numericCode: "144"),
          Country(
              name: "Sudan",
              alpha2Code: "SD",
              alpha3Code: "SDN",
              numericCode: "729"),
          Country(
              name: "Suriname",
              alpha2Code: "SR",
              alpha3Code: "SUR",
              numericCode: "740"),
          Country(
              name: "Svalbard and Jan Mayen",
              alpha2Code: "SJ",
              alpha3Code: "SJM",
              numericCode: "744"),
          Country(
              name: "Sweden",
              alpha2Code: "SE",
              alpha3Code: "SWE",
              numericCode: "752"),
          Country(
              name: "Switzerland",
              alpha2Code: "CH",
              alpha3Code: "CHE",
              numericCode: "756"),
          Country(
              name: "Syrian Arab Republic",
              alpha2Code: "SY",
              alpha3Code: "SYR",
              numericCode: "760"),
          Country(
              name: "Taiwan",
              alpha2Code: "TW",
              alpha3Code: "TWN",
              numericCode: "158"),
          Country(
              name: "Tajikistan",
              alpha2Code: "TJ",
              alpha3Code: "TJK",
              numericCode: "762"),
          Country(
              name: "Tanzania, United Republic of",
              alpha2Code: "TZ",
              alpha3Code: "TZA",
              numericCode: "834"),
          Country(
              name: "Thailand",
              alpha2Code: "TH",
              alpha3Code: "THA",
              numericCode: "764"),
          Country(
              name: "Timor-Leste",
              alpha2Code: "TL",
              alpha3Code: "TLS",
              numericCode: "626"),
          Country(
              name: "Togo",
              alpha2Code: "TG",
              alpha3Code: "TGO",
              numericCode: "768"),
          Country(
              name: "Tokelau",
              alpha2Code: "TK",
              alpha3Code: "TKL",
              numericCode: "772"),
          Country(
              name: "Tonga",
              alpha2Code: "TO",
              alpha3Code: "TON",
              numericCode: "776"),
          Country(
              name: "Trinidad and Tobago",
              alpha2Code: "TT",
              alpha3Code: "TTO",
              numericCode: "780"),
          Country(
              name: "Tunisia",
              alpha2Code: "TN",
              alpha3Code: "TUN",
              numericCode: "788"),
          Country(
              name: "Turkey",
              alpha2Code: "TR",
              alpha3Code: "TUR",
              numericCode: "792"),
          Country(
              name: "Turkmenistan",
              alpha2Code: "TM",
              alpha3Code: "TKM",
              numericCode: "795"),
          Country(
              name: "Turks and Caicos Islands",
              alpha2Code: "TC",
              alpha3Code: "TCA",
              numericCode: "796"),
          Country(
              name: "Tuvalu",
              alpha2Code: "TV",
              alpha3Code: "TUV",
              numericCode: "798"),
          Country(
              name: "Uganda",
              alpha2Code: "UG",
              alpha3Code: "UGA",
              numericCode: "800"),
          Country(
              name: "Ukraine",
              alpha2Code: "UA",
              alpha3Code: "UKR",
              numericCode: "804"),
          Country(
              name: "United Arab Emirates",
              alpha2Code: "AE",
              alpha3Code: "ARE",
              numericCode: "784"),
          Country(
              name: "United States Minor Outlying Islands",
              alpha2Code: "UM",
              alpha3Code: "UMI",
              numericCode: "581"),
          Country(
              name: "Uruguay",
              alpha2Code: "UY",
              alpha3Code: "URY",
              numericCode: "858"),
          Country(
              name: "Uzbekistan",
              alpha2Code: "UZ",
              alpha3Code: "UZB",
              numericCode: "860"),
          Country(
              name: "Vanuatu",
              alpha2Code: "VU",
              alpha3Code: "VUT",
              numericCode: "548"),
          Country(
              name: "Venezuela",
              alpha2Code: "VE",
              alpha3Code: "VEN",
              numericCode: "862"),
          Country(
              name: "Viet Nam",
              alpha2Code: "VN",
              alpha3Code: "VNM",
              numericCode: "704"),
          Country(
              name: "Virgin Islands (British)",
              alpha2Code: "VG",
              alpha3Code: "VGB",
              numericCode: "092"),
          Country(
              name: "Virgin Islands (U.S.)",
              alpha2Code: "VI",
              alpha3Code: "VIR",
              numericCode: "850"),
          Country(
              name: "Wallis and Futuna",
              alpha2Code: "WF",
              alpha3Code: "WLF",
              numericCode: "876"),
          Country(
              name: "Western Sahara",
              alpha2Code: "EH",
              alpha3Code: "ESH",
              numericCode: "732"),
          Country(
              name: "Yemen",
              alpha2Code: "YE",
              alpha3Code: "YEM",
              numericCode: "887"),
          Country(
              name: "Zambia",
              alpha2Code: "ZM",
              alpha3Code: "ZMB",
              numericCode: "894"),
          Country(
              name: "Zimbabwe",
              alpha2Code: "ZW",
              alpha3Code: "ZWE",
              numericCode: "716"),
          Country(
              name: "Åland Islands",
              alpha2Code: "AX",
              alpha3Code: "ALA",
              numericCode: "248")
        ];

  List<Country> get countries => _countries;

  Country getCountryByAlpha2Code(String alpha2Code) {
    return _countries.firstWhere(
        (country) => country.alpha2Code == alpha2Code.toUpperCase());
  }

  Country getCountryByAlpha3Code(String alpha3Code) {
    return _countries.firstWhere(
        (country) => country.alpha3Code == alpha3Code.toUpperCase());
  }

  Country getCountryByNumericCode(String numericCode) {
    return _countries
        .firstWhere((country) => country.numericCode == numericCode);
  }
}
