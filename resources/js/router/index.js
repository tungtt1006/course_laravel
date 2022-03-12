import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
    routes: [
        {
            path: '/',
            name: 'home',
            component: () => import(/* webpackChunkName: "home" */ "../views/TheHome.vue")
        },
        // {
        //     path: '/category/:id',
        //     name: 'category',
        //     component: () =>
        //         import(/* webpackChunkName: "category" */ "../views/Category.vue")
        // },
        // {
        //     path: '/newslist',
        //     name: 'newslist',
        //     component: () =>
        //         import(/* webpackChunkName: "newslist" */ "../views/NewsList.vue")
        // },
        // {
        //     path: '/detailnew/:id',
        //     name: 'detailnew',
        //     component: () =>
        //         import(/* webpackChunkName: "detailnew" */ "../views/DetailNew.vue")
        // },
        // {
        //     path: '/detailuser',
        //     name: 'detailuser',
        //     component: () =>
        //         import(/* webpackChunkName: "detailuser" */ "../views/DetailUser.vue")
        // },
        // {
        //     path: '/detailcourse/:id',
        //     name: 'detailcourse',
        //     component: () =>
        //         import(/* webpackChunkName: "detailcourse" */ "../views/DetailCourse.vue")
        // },
        // {
        //     path: '/register',
        //     name: 'register',
        //     component: () =>
        //         import(/* webpackChunkName: "register" */ "../views/Register.vue")
        // },
        // {
        //     path: '/login',
        //     name: 'login',
        //     component: () =>
        //         import(/* webpackChunkName: "login" */ "../views/Login.vue")
        // },
        // {
        //     path: '/aboutus',
        //     name: 'aboutus',
        //     component: () =>
        //         import(/* webpackChunkName: "aboutus" */ "../views/AboutUs.vue")
        // },
    ]
})