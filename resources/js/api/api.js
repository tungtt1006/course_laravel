const domain = 'http://127.0.0.1:8000/api/'

async function post(action, k) {
    const res = await axios.post(domain + action, k)
    return res
}

async function get(action) {
    const res = await axios.get(domain + action)
    return res
}

export const coreApi = {
    post,
    get
}
