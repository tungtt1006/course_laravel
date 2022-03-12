<template>
    <div>
        <Banner/>
    </div>
</template>

<script>
import Banner from '@/components/TheBanner.vue'

export default {
    components: {
        Banner
    },
    data() {
        return {
            categories: [],
        }
    },
}
</script>