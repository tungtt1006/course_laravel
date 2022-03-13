<template>
    <div class="container-fluid p-0">
        <TheHeading/>
        <div class="container mt-3 shadow-sm bg-white px-4">
            <router-view/>
        </div>
    </div>
</template>

<script>
import TheHeading from './components/TheHeading.vue'

export default {
    name: 'App',
    components: {
        TheHeading
    }
}
</script>

<style>
body {
    background-color: #f4f4f4;
}
</style>