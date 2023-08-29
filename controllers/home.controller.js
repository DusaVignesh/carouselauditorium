const ejs=require('ejs');
const app=require('../app');
const express=require('express');
const { addUser } = require('../models');

app.set('view engine','ejs');
app.use(express.static('public'));

const handleHomePage= async (req,res)=>
    res.render('index',{});

const handleContactPage= async (req,res)=>
    res.render('contact-us',{});

const handleAboutPage= async (req,res)=>
    res.render('about-us',{});

const handleLoginPage= async (req,res)=>
    res.render('login',{ status: ''});

const handlePostLoginPage = async function(req,res){
    try {
        const user = await addUser.findOne({
          $and: [{ username: req.body.username }, { password: req.body.password }]
        });
    
        if (user != null) {
          if (user.role === 'admin') {
            res.redirect('/admin');
          } else {
            res.redirect('/user');
          }
        } else {
            const status='invalid username and password';
          res.render('login',{status: status});
        }
      } catch (error) {
        console.error('Error handling login page:', error);
        res.status(500).send('An error occurred'); // Sending an error response
      }
}
module.exports={handleHomePage,handleAboutPage,handleContactPage,handleLoginPage,handlePostLoginPage};

