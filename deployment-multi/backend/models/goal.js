const mongoose = require('mongoose');

const { Schema } = mongoose;

const goalSchema = new Schema({
    text: String,
});

const GoalModel = mongoose.model('Goal', goalSchema);

module.exports = GoalModel;
