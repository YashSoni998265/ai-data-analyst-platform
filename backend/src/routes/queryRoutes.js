const express = require("express");
const router = express.Router();
const {handleQuery} = require("../controllers/queryController");

//POST /query endpoint
router.post("/query",handleQuery);
module.exports = router;