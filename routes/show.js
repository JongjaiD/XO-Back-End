var express = require('express');
var router = express.Router();
const db = require("../app/Database/connection");

/* GET home page. */
router.get('/replay', async function(req, res) {
    try{
      const sqlShowData = `SELECT * FROM replay`
      const show = await db.query(sqlShowData)
      console.log(show)


      return res.status(200).json({
        result:'Success',
        data: show
      })
    }
    catch(error){
      console.log(error)
      return res.status(400).json({
          result:'Fail',
          error: error.massage
      })

  }
})

router.get('/replay/:id', async function(req, res) {
  try{
    const id = req.params.id
    const sqlShowData = `SELECT * FROM replay WHERE id = ${id}`
    const show = await db.query(sqlShowData)
    console.log(show)
    if(!show.length){
      return res.status(404).json({
        result:'Fail'
      })
    }

    return res.status(200).json({
      result:'Success',
      data: show[0]
    })
  }
  catch(error){
    console.log(error)
    return res.status(400).json({
        result:'Fail',
        error: error.massage
    })

}
})

router.post('/replay', async function(req,res){
  try{
    const sqlCreatedData = `INSERT INTO replay SET?`
      const values = {
          data: req.body.data
      }
      const data = await db.query(sqlCreatedData, values)
      console.log(data)

    return res.status(200).json({
      result:'Success'
    })
  }
  catch(error){
    console.log(error)
    return res.status(400).json({
        result:'Fail',
        error: error.massage
    })

  }
})
  
module.exports = router;
