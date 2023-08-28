const ejs=require('ejs');
const app=require('../app');
const express=require('express');

app.set('view engine','ejs');
app.use(express.static('public'));

const handleHomePage= async (req,res)=>
    res.render('index',{});

const handleContactPage= async (req,res)=>
    res.render('contact-us',{});

const handleAboutPage= async (req,res)=>
    res.render('about-us',{});

const handleLoginPage= async (req,res)=>
    res.render('login',{});

module.exports={handleHomePage,handleAboutPage,handleContactPage,handleLoginPage};

