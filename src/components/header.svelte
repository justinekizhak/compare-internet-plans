<script>
  import { fly } from 'svelte/transition';
  import { fade } from 'svelte/transition';
  let menu_visible=false;

  function showMenu() {
    menu_visible = true;
  }

  function hideMenu() {
    menu_visible = false;
  }
</script>

<style>
  .menu-color {
    @apply text-gray-500;
  }
  .menu-color:hover {
    @apply text-white;
  }
</style>




<div class="sticky top-0 inset-x-0 bg-black">
<nav class="flex items-center justify-between flex-wrap px-8 py-6">
  <!-- banner -->
  <div class="flex items-center flex-shrink-0 text-white mr-6">
  <!-- svg logo -->
  <div class="w-8 h-8 mr-4 hidden sm:inline">
    <svg width="100%"
        height="100%" viewBox="0 0 1000 1000" version="1.1" xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" xmlns:serif="http://www.serif.com/"
        style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:1.41421;">
        <rect x="0" y="0" width="1000" height="1000" style="fill:#fff;" />
        <path
            d="M398.001,214.041l0,400.383c0,47.826 -3.34,83.496 -10.02,107.009c-6.68,26.719 -18.035,49.296 -34.067,67.732c-31.261,36.605 -72.675,54.907 -124.242,54.907c-39.01,0 -75.481,-10.153 -109.414,-30.459l45.689,-79.756c22.711,15.23 43.953,22.845 63.725,22.845c27.787,0 47.025,-10.554 57.712,-31.662c11.222,-21.108 16.833,-57.98 16.833,-110.616l0,-400.383l93.784,0Z"
            style="fill-rule:nonzero;" />
        <path
            d="M619.233,155.928l0,412.806l127.048,-126.246l121.037,0l-169.531,163.92l181.955,226.443l-117.029,0l-129.052,-164.722l-14.428,14.428l0,150.294l-90.176,0l0,-676.923l90.176,0Z"
          style="fill-rule:nonzero;" />
    </svg>
  </div>
  <!-- title -->
  <span class="font-semibold text-l sm:text-xl md:text-2xl tracking-tight">Justine Kizhakkinedath</span>
  </div>
  <!-- right side menu -->
  <div class="block">
    <button on:click={showMenu} class="flex items-center px-3 py-2 border text-gray-300 border-gray-500 hover:text-white hover:border-white">
      <svg class="fill-current h-3 w-3" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><title>Menu</title><path d="M0 3h20v2H0V3zm0 6h20v2H0V9zm0 6h20v2H0v-2z"/></svg>
    </button>
  </div>
</nav>
</div>








{#if menu_visible}
  <div transition:fade="{{ duration: 500 }}">
    <div class="fixed top-0 h-full w-full bg-black ">
      <div transition:fly="{{ x: 200, duration: 2000 }}">

        <div class="flex flex-col md:flex-row p-auto">
          <div class="m-8 mb-4 md:mt-12 md:m-16">
        <button on:click={hideMenu}>
          <div class="flex w-12 h-12 md:w-16 md:h-16 fill-current text-gray-600 hover:text-white">
            <svg width="100%"
              height="100%" viewBox="0 0 1000 1000" version="1.1" xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink" xml:space="preserve" xmlns:serif="http://www.serif.com/"
              style="fill-rule:evenodd;clip-rule:evenodd;stroke-linejoin:round;stroke-miterlimit:1.41421;">
              <path
                  d="M500,0c275.958,0 500,224.042 500,500c0,275.958 -224.042,500 -500,500c-275.958,0 -500,-224.042 -500,-500c0,-275.958 224.042,-500 500,-500Zm0,30c259.4,0 470,210.6 470,470c0,259.4 -210.6,470 -470,470c-259.4,0 -470,-210.6 -470,-470c0,-259.4 210.6,-470 470,-470Z"
                  />
              <path d="M241.906,736.881l21.213,21.213l494.975,-494.975l-21.213,-21.213l-494.975,494.975Z" />
              <path d="M758.094,736.881l-21.213,21.213l-494.975,-494.975l21.213,-21.213l494.975,494.975Z" />
              </svg>
          </div>
        </button>
        </div>

        <div class="m-8 mt-4 md:mt-8 text-4xl md:text-5xl flex ">
        <ul class="flex-col">
          <li><a class="text-gray-600 hover:text-white" href="#">Home</a></li>
          <li><a class="text-gray-600 hover:text-white" href="#">Portfolio</a></li>
          <li><a class="text-gray-600 hover:text-white" href="#">About</a></li>
          <li><a class="text-gray-600 hover:text-white" href="#">Contacts</a></li>
        </ul>
        </div>
        </div>

      </div>
    </div>
  </div>
{/if}
