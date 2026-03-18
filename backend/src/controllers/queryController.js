//Import database connection
const pool = require("../config/db");

//Controller function to handle query requests
const handleQuery = async(req,res)=>{
    try{
        //Extract query from frontend request
        const {query} = req.body;

        //TEMP: Hardcoded SQL (we will replace with AI later)
        const sqlQuery = "SELECT * from products";

        //Execute SQL query on database
        const result = await pool.query(sqlQuery);

        //Send results back to frontend
        res.json({
            success:true,
            data: result.rows,
        });
    } catch(error){
        console.error(error);
        res.status(500).json({
            success:false,
            message: "Error executing query",
        });
    }
};

//EXPORT CONTROLLER FUNCTION
module.exports = {handleQuery};