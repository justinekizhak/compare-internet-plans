<script>
    import { menu_visible } from './stores.js';
    import { fly } from 'svelte/transition';
    import { fade } from 'svelte/transition';

    function hideMenu() {
    menu_visible.set(false);
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

      <div in:fly="{{x:200, duration:1500 }}" class="flex flex-col md:flex-row p-auto bg-black">
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

        <div class="m-8 mt-4 md:mt-8 text-3xl md:text-4xl lg:text-5xl xl:text-6xl flex ">
        <ul class="flex-col">
          <li><a class="text-gray-600 hover:text-white" href="https://justine.kizhak.com">Home</a></li>
          <li><a class="text-gray-600 hover:text-white" href="https://justine.kizhak.com/about">About</a></li>
          <li><a class="text-gray-600 hover:text-white" href="https://justine.kizhak.com/contact">Contacts</a>
          </li>
        </ul>
        </div>
        </div>
