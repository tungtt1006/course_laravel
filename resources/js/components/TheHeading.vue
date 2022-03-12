<template>
    <div class="bg-white">
        <nav class="navbar navbar-expand-sm">
            <div class="col-md-8">
                <h1 class="ps-3 m-0 fw-bolder text-success">&lt;!--XT--&gt;</h1>
            </div>
            <div class="col-md-2 ps-3">
                <p class="m-0 fw-thin">Email</p>
                <p class="m-0 fs-5 fw-normal">team13@gmail.com</p>
            </div>
            <div class="col-md-2 ps-5">
                <p class="m-0 fw-thin">Điện thoại</p>
                <p class="m-0 fs-5 fw-normal">0968.68.68.68</p>
            </div>
        </nav>
        <nav class="navbar navbar-expand-lg bg-success">
            <div class="container-fluid">
                <a class="navbar-brand text-white" href="">Trang chủ</a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle text-white" href="" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Khóa học
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li v-for="item in categories" :key="item.id">
                                    <a class="dropdown-item" href="#">{{ item.name }}</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="">Tin tức</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="">Giới thiệu</a>
                        </li>
                    </ul>
                </div>
                <div></div>
                <div class="pe-3">
                    <a class="text-white text-decoration-none" href="">Đăng nhập /</a>
                    <a class="text-white text-decoration-none" href="">Đăng kí</a>
                </div>
            </div>
        </nav>
    </div>
</template>

<script>
import { categoryApi } from '@/api/category.js'

export default {
    data() {
        return {
            categories: [],
        }
    },
    created() {
        categoryApi
            .getCategory()
            .then(response => {
                this.categories = response.data
            })
            .catch(error => alert("Fail"))
    },
}
</script>