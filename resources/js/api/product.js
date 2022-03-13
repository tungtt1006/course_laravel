import { coreApi } from './api.js'

export const productApi = {
    getProducts(type) {
        return coreApi.get('products?type=' + type)
    }
}