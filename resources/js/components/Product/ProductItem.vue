<template>
    <div class="col">
        <a href="" class="card text-black text-decoration-none shadow-sm">
            <img src="" class="card-img-top border-bottom" alt="...">
            <div class="card-body">
                <h5 class="card-title">{{ item.name }}</h5>
                <p class="card-text">{{ item.description }}</p>
                <p class="mt-5 mb-0 text-decoration-line-through text-muted">{{ formatNumber() }} VND</p>
                <p class="mt-0 fs-5 fw-bolder">
                    {{ discountPrice }} VND
                </p>
            </div>
        </a>
    </div>
</template>

<script>

export default {
    props: {
        item: {
            type: Object,
            default: null
        },
    },
    computed: {
        discountPrice() {
            let discountPrice = this.item.price * ((100 - 70) / 100)
            return this.formatNumber(discountPrice)
        }
    },
    methods: {
        formatNumber(number = this.item.price) {
            return new Intl.NumberFormat().format(number)
        }
    },
}
</script>

<style scoped>
a:hover {
    box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px !important;
}
</style>
