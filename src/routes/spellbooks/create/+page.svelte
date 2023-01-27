<script lang="ts">
	import { applyAction, enhance } from '$app/forms';
	import type { ActionData } from './$types';

	export let form: ActionData;
</script>

<section class="flex flex-col flex-auto w-full">
	<h1 class="text-5xl py-8">Create a Spellbook</h1>
	<form
		method="POST"
		action="?/create"
		class="flex flex-col flex-1 gap-8 mb-4"
		use:enhance={() => {
			return async ({ result, update }) => {
				if (result.type === 'failure') {
					await applyAction(result);
				}
				update();
			};
		}}
	>
		<fieldset class="flex items-center justify-evenly">
			<div class="flex flex-col gap-4">
				<p class="flex flex-col items-start">
					<label for="sname">Spellbook Name</label>
					<input type="text" id="sname" name="name" class="rounded-lg bg-slate-500 py-1 px-2" />
				</p>
				<p class="flex flex-col items-start">
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
				<p class="flex flex-col items-start self-stretch">
					<label for="desc">Spellbook Description</label>
					<textarea
						id="desc"
						name="description"
						class="resize-none flex-grow rounded-lg bg-slate-500 py-1 px-2"
					/>
				</p>
			</div>
		</fieldset>

		<fieldset class="flex justify-center gap-8">
			<legend>Select a class</legend>
			<ul class="flex flex-col items-end">
				<li>
					<label for="class1">Artificer</label>
					<input type="checkbox" id="class1" name="class" value="artificer" />
				</li>
				<li>
					<label for="class2">Bard</label>
					<input type="checkbox" id="class2" name="class" value="bard" />
				</li>
				<li>
					<label for="class3">Cleric</label>
					<input type="checkbox" id="class3" name="class" value="cleric" />
				</li>
			</ul>
			<ul class="flex flex-col items-end">
				<li>
					<label for="class4">Druid</label>
					<input type="checkbox" id="class4" name="class" value="druid" />
				</li>
				<li>
					<label for="class5">Paladin</label>
					<input type="checkbox" id="class5" name="class" value="paladin" />
				</li>
				<li>
					<label for="class6">Ranger</label>
					<input type="checkbox" id="class6" name="class" value="ranger" />
				</li>
			</ul>
			<ul class="flex flex-col items-end">
				<li>
					<label for="class7">Sorcerer</label>
					<input type="checkbox" id="class7" name="class" value="sorcerer" />
				</li>
				<li>
					<label for="class8">Warlock</label>
					<input type="checkbox" id="class8" name="class" value="warlock" />
				</li>
				<li>
					<label for="class9">Wizard</label>
					<input type="checkbox" id="class9" name="class" value="wizard" />
				</li>
			</ul>
		</fieldset>

		<div class="mt-auto">
			<p>
				<button type="submit" class="bg-slate-500 p-3 rounded-lg">Create a Spellbook</button>
			</p>
		</div>
	</form>
	{#if form?.error}
		<span>{form?.message}</span>
	{/if}
</section>
