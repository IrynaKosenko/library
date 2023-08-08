import 'dotenv/config';
import express from 'express';
import path from 'path';
import router from './routes/main';

const app = express();

app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({extended:false}));
app.use(express.static('static'));

//app.use(router);

app.get('/', (req,res) => {
    //res.render('../ejs-views/book-page.ejs');
    res.render('../ejs-views/books-page.ejs');
});
app.get('/book:id', (req,res) => {
    res.render('../ejs-views/book-page.ejs', );

});




app.listen(process.env.PORT || 3000, ()=> {
    console.log('Server started at ' + process.env.PORT || 3000);
})