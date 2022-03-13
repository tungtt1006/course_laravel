<template>
    <div class="mt-3">
        <h1 v-if="products.title" class="fw-normal">{{ products.title }}</h1>
        <div class="row row-cols-4">
            <ProductItem v-for="item in products.data" :key="item.name" :item="item"/>
        </div>
    </div>
</template>

<script>
import ProductItem from './ProductItem.vue'

export default {
    props: {
        products: {
            type: Object,
            default: () => []
        },
    },
    components: {
        ProductItem
    },
}
</script>