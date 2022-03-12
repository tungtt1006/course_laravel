import { coreApi } from './api.js'

export const categoryApi = {
    getCategory() {
        return coreApi.get('categories')
    },
}