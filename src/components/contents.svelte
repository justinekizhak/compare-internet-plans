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

<h1>Contents</h1>

<button on:click={addCol}>
	Add a col
</button>

<button on:click={removeCol}>
	Remove a col
</button>

<div class="overflow-auto flex flex-col sm:flex-row h-full">
  {#each { length: numbers } as _, i}
      <span class="border w-full sm:min-w-1/2"><FormBlock/></span>
  {/each}
</div>
