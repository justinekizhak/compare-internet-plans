<script>
  import InputBlock from './inputBlock.svelte';
	let fup_speed=0;
	let fup_data_limit_input=0;
	let post_fup_speed=0;
	let plan_cost=0;

	let max_data_use;
  let value_for_money;
  let totaltime = 3600 * 24 * 30;
	let fup_data_limit;

	$: {
		fup_data_limit = fup_data_limit_input * 8000;
		max_data_use = (
    	(totaltime - (fup_data_limit / fup_speed))
			* post_fup_speed + fup_data_limit) / 8000;
		value_for_money = max_data_use / plan_cost;
	}


</script>

<style>
  input {
    @apply p-2 w-full border my-2 text-gray-700
  }
</style>

<div class="border p-4 m-4 bg-gray-200">
  <h1 class="px-2 pb-4">Internet plan details</h1>

  <div class="flex-col">


  <InputBlock>
    <span slot="label">FUP speed</span>
    <span slot="input"><input type="number" bind:value={fup_speed} placeholder="Enter FUP speed" ></span>
  </InputBlock>

  <InputBlock>
    <span slot="label">FUP data limit</span>
    <span slot="input"><input type="number" bind:value={fup_data_limit_input} placeholder="Enter FUP data limit">
    </span>
  </InputBlock>

  <InputBlock>
    <span slot="label">Post FUP speed</span>
    <span slot="input"><input type="number" bind:value={post_fup_speed} placeholder="Enter post FUP speed" >
    </span>
  </InputBlock>

  <InputBlock>
    <span slot="label">Plan cost</span>
    <span slot="input"><input type="number" bind:value={plan_cost} placeholder="Enter plan cost" ></span>
  </InputBlock>

  <span class="block mt-2 px-2 pt-2"> Value for money:
   <span class="text-gray-700"> {value_for_money}</span>
  </span>
  </div>
</div>
