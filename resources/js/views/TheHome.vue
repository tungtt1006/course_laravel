<template>
    <div>
        <Banner/>
        <ProductList :products="hightlightProducts"/>
        <ProductList :products="newestProducts"/>
    </div>
</template>

<script>
import Banner from '@/components/TheBanner.vue'
import ProductList from '@/components/Product/ProductList.vue'
import { productApi } from '@/api/product.js'

export default {
    components: {
        Banner,
        ProductList
    },
    data() {
        return {
            categories: [],
            hightlightProducts: {},
            newestProducts: {},
        }
    },
    created() {
        productApi
            .getProducts('hightlight')
            .then(response => {
                this.hightlightProducts = response.data
                this.hightlightProducts.title = "Khóa học nổi bật"
            })
            .catch(error => alert("Product Fail"))
        productApi
            .getProducts('newest')
            .then(response => {
                this.newestProducts = response.data
                this.newestProducts.title = "Khóa học mới nhất"
            })
            .catch(error => alert("Product Fail"))
    }
}
</script>