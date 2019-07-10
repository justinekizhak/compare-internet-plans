<script>
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
    @apply p-2 w-full border my-2
  }
</style>

<div class="border p-4 m-4 bg-gray-200">
  <h1 class="px-2 pb-4">Internet plan details</h1>

  <div class="flex-col">
    <input bind:value={fup_speed} placeholder="This is fup speed">
    <input bind:value={fup_data_limit_input} placeholder="This is fup data limit">
    <input bind:value={post_fup_speed} placeholder="This is post fup speed">
    <input bind:value={plan_cost} placeholder="This is plan cost">
    <span class="block mt-2 px-2 pt-2"> Value for money: {value_for_money} </span>
  </div>
</div>
