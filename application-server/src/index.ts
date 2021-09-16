import axios from "axios"

const instance = axios.create({
    baseURL: "https://pokeapi.co/api/v2/"
})

const checkPokemon = async (pokemonName: string) => {
    const pokemon = await instance.get(`pokemon/${pokemonName}`)
    return pokemon.data
}
console.log("Hello Docker", checkPokemon("ditto"))