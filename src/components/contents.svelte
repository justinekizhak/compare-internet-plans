<script>
  import FormBlock from './formBlock.svelte';
  let numbers=2;

  function addCol() {
    numbers += 1;
  }

  function removeCol() {
    numbers -= 1;
  }

</script>

<style>
  button {
    @apply bg-white text-black py-2 px-4 border border-gray-500 my-2;
  }
  button:hover {
    @apply bg-gray-800 text-white;
  }




</style>

<div class="p-8 bg-white">

<h1 class="text-lg">Compare Internet plans</h1>

  <div class="block my-4">
    <button on:click={addCol} >
      Add a plan
    </button>
    <button on:click={removeCol} >
      Remove a plan
    </button>
  </div>

  <div class="p-auto overflow-auto flex flex-col sm:flex-row h-full">
    {#each { length: numbers } as _, i}
        <span class="border w-full sm:min-w-1/2"><FormBlock/></span>
    {/each}
  </div>

</div>
