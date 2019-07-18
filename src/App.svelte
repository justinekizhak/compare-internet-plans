<script>
  import Header from './components/header.svelte';
  import Menu from './components/menu.svelte';
  import Footer from './components/footer.svelte';
  import Contents from './components/contents.svelte';
  import { menu_visible } from './components/stores.js';

  import { fly } from 'svelte/transition';
  import { fade } from 'svelte/transition';

</script>


<div class="font-display antialiased h-screen bg-black">
  {#if $menu_visible}
      <Menu/>
  {:else}
      <div  in:fade>
    <Header/>
    <Contents/>
    <Footer/>
    </div>
  {/if}
</div>
