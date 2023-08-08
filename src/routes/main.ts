import express from 'express';
const router = express.Router();

// router.get('/', (req, res) => {
//     res.render('../../views/books-page/books-page.html');
// });

router.get('/', (req, res) => {
    res.render('../../views/book-page/book-page.html');
});

export default router;