<script lang="ts">
	import { enhance } from '$app/forms';

	export let form: { message?: string };
</script>

<section class="flex flex-col flex-auto p-12 items-center justify-center">
	<form method="POST" class="flex flex-col mb-4 text-2xl items-center" use:enhance>
		<hgroup class="py-8 mb-8">
			<h2 class="text-6xl">Login</h2>
		</hgroup>

		<label class="mb-2 self-start" for="username">Username</label>
		<input
			class="py-2 px-4 mb-8 bg-stone-700 rounded-full focus:outline-none focus:ring focus:ring-stone-600"
			type="text"
			id="username"
			name="username"
			required
		/>

		<label class="mb-2 self-start" for="password">Password</label>
		<input
			class="py-2 px-4 mb-8 bg-stone-700 rounded-full focus:outline-none focus:ring focus:ring-stone-600"
			type="password"
			id="password"
			name="password"
			required
		/>

		<button class="w-48 py-2 px-4 mb-4 rounded-full bg-stone-800 hover:bg-stone-700" type="submit"
			>Login</button
		>
	</form>
	{#if form?.message}
		<p>{form.message || ''}</p>
	{/if}
</section>
