const express=require('express');
const ejs=require('ejs')
const app=require('../app');
const {homeController}=require('../controllers');

app.set('view engine','ejs');
app.use(express.static('public'));

const homeRoute=express.Router();
homeRoute
    .route('/')
    .get(homeController.handleHomePage)

homeRoute
    .route('/contact-us')
    .get(homeController.handleContactPage)

homeRoute
    .route('/about-us')
    .get(homeController.handleAboutPage)
    
homeRoute
    .route('/login')
    .get(homeController.handleLoginPage)

module.exports=homeRoute;
