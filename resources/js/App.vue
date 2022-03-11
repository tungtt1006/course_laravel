<template>
    <div class="container-fluid p-0">
        <TheHeading/>
        <div class="container mt-3 bg-primary">
            <h1>Hello World</h1>
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
    margin: 0;
    padding: 0;
}
</style>