const ejs = require('ejs');
const app = require('../app');
const express = require('express');
const path = require('path');
const fs = require('fs');
const { addAuditorium, addFeedback } = require('../models');
const base64ArrayBuffer = require('base64-arraybuffer');

app.set('view engine', 'ejs');
app.use(express.static('public'));

const handleAdminViewAuditorium = async function (req, res) {
  try {
    const list = await addAuditorium.find({});
    await Promise.all(list.map(async auditorium => {
      const outputPath = `/home/siddharth/Desktop/project/auditoriumBookingnew/public/images/outputs/${auditorium.imageName}`;
      try {
        await fs.promises.writeFile(outputPath, auditorium.auditoriumImage);
      } catch (error) {
        console.error('Error writing image:', error);
      }
    }));
    res.render('view-auditorium', { auditoriumlist: list })
  }
  catch (error) {
    console.error('Error:', error);
    res.status(500).send('Internal Server Error');
  }
}
const handleGetAuditorium = async function (req, res) {
  res.render('add-auditorium', {})
}
const handleAddAuditorium = async function (req, res) {
  try {
    // /home/siddharth/Desktop/project/auditoriumBookingnew

    const imageurl = `/home/siddharth/Desktop/project/auditoriumBookingnew/public/images/${req.body.auditoriumImage}`;
    const image = fs.readFileSync(imageurl);

    const newAuditorium = {
      auditoriumName: req.body.auditoriumName,
      totalSeats: req.body.totalSeats,
      description: req.body.description,
      auditoriumImage: image,
      imageName: req.body.auditoriumImage
    };

    await addAuditorium.create(newAuditorium);

    res.redirect('./');
  } catch (error) {
    console.error('Error:', error);
    res.status(500).send('Internal Server Error');
  }
}
const handleGetFeedbacks = async function (req, res) {
  const feedbackList = await addFeedback.find();
  res.render('view-feedbacks', { feedbackList: feedbackList });
}
const handlePostDeleteFeedback = async function (req, res) {
  const r = await addFeedback.deleteOne({ _id: req.body.id });
  res.redirect('./view-feedbacks');
}


module.exports = { handleAdminViewAuditorium, handleGetAuditorium, handleAddAuditorium, handleGetFeedbacks, handlePostDeleteFeedback }