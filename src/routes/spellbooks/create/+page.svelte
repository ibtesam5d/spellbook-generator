<script lang="ts">
	import { applyAction, enhance } from '$app/forms';
	import type { ActionData } from './$types';

	export let form: ActionData;
</script>

<section class="flex flex-col flex-auto p-12">
	<h1 class="text-6xl py-8 mb-8">Create a Spellbook</h1>
	<form
		method="POST"
		action="?/create"
		class="flex flex-col flex-1 gap-24 mb-4 text-2xl"
		use:enhance={() => {
			return async ({ result, update }) => {
				if (result.type === 'failure') {
					await applyAction(result);
				}
				update();
			};
		}}
	>
		<fieldset class="flex items-center justify-evenly gap-8">
			<legend class="mb-4 text-3xl">Enter Spellbook Details</legend>
			<div class="flex flex-col gap-4">
				<p class="flex flex-col items-start gap-2">
					<label for="sname">Spellbook Name</label>
					<input type="text" id="sname" name="name" class="rounded-lg bg-slate-500 py-1 px-2" />
				</p>
				<p class="flex flex-col items-start gap-2">
					<label for="cname">Character Name</label>
					<input
						type="text"
						id="cname"
						name="characterName"
						class="rounded-lg bg-slate-500 py-1 px-2"
					/>
				</p>
			</div>
			<div class="flex self-stretch">
				<p class="flex flex-col items-start self-stretch gap-2">
					<label for="desc">Spellbook Description</label>
					<textarea
						id="desc"
						name="description"
						class="resize-none flex-grow rounded-lg bg-slate-500 py-1 px-2"
					/>
				</p>
			</div>
		</fieldset>

		<fieldset class="flex justify-around">
			<legend class="mb-4 text-3xl">Select a class</legend>
			<ul class="flex flex-col items-end gap-4">
				<li>
					<label for="class1">Artificer</label>
					<input type="checkbox" id="class1" name="class" value="Artificer" />
				</li>
				<li>
					<label for="class2">Bard</label>
					<input type="checkbox" id="class2" name="class" value="Bard" />
				</li>
				<li>
					<label for="class3">Cleric</label>
					<input type="checkbox" id="class3" name="class" value="Cleric" />
				</li>
			</ul>
			<ul class="flex flex-col items-end gap-4">
				<li>
					<label for="class4">Druid</label>
					<input type="checkbox" id="class4" name="class" value="Druid" />
				</li>
				<li>
					<label for="class5">Paladin</label>
					<input type="checkbox" id="class5" name="class" value="Paladin" />
				</li>
				<li>
					<label for="class6">Ranger</label>
					<input type="checkbox" id="class6" name="class" value="Ranger" />
				</li>
			</ul>
			<ul class="flex flex-col items-end gap-4">
				<li>
					<label for="class7">Sorcerer</label>
					<input type="checkbox" id="class7" name="class" value="Sorcerer" />
				</li>
				<li>
					<label for="class8">Warlock</label>
					<input type="checkbox" id="class8" name="class" value="Warlock" />
				</li>
				<li>
					<label for="class9">Wizard</label>
					<input type="checkbox" id="class9" name="class" value="Wizard" />
				</li>
			</ul>
		</fieldset>

		<div class="mt-auto flex justify-center">
			<button type="submit" class="flex py-2 px-4 gap-2 bg-slate-500 rounded-full">
				<i class="mi-md mi-add" />
				<span>Create a Spellbook</span>
			</button>
		</div>
	</form>
	{#if form?.error}
		<span>{form?.message}</span>
	{/if}
</section>
