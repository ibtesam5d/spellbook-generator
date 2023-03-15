<script lang="ts">
	import { writable } from 'svelte/store';
	import {
		createSvelteTable,
		flexRender,
		getCoreRowModel,
		renderComponent
	} from '@tanstack/svelte-table';
	import type { ColumnDef, TableOptions } from '@tanstack/svelte-table';
	import type { Spell } from '@prisma/client';
	import SpellTableLink from './SpellTableLink.svelte';
	import { joinWithSpace } from '$lib/utils/utils';

	export let data: Spell[] = [];

	const defaultColumns: ColumnDef<Spell>[] = [
		{
			accessorKey: 'name',
			header: () => 'Name',
			cell: (data) =>
				renderComponent(SpellTableLink, {
					href: `/spells/${(data.cell.getValue() as string).toLowerCase().replaceAll(' ', '-')}`,
					label: data.cell.getValue() as string
				})
		},
		{
			accessorKey: 'level',
			header: () => 'Level'
		},
		{
			accessorKey: 'list',
			header: () => 'Class(es)',
			cell: (info) => joinWithSpace(info.getValue() as string[])
		},
		{
			accessorKey: 'time',
			header: () => 'Casting Time'
		},
		{
			accessorKey: 'range',
			header: () => 'Range'
		},
		{
			accessorKey: 'duration',
			header: () => 'Duration'
		}
	];

	const options = writable<TableOptions<Spell>>({
		data: data,
		columns: defaultColumns,
		getCoreRowModel: getCoreRowModel()
	});

	const rerender = () => {
		options.update((options) => ({
			...options,
			data: data
		}));
	};

	const table = createSvelteTable(options);
</script>

<table class="spell-table">
	<thead>
		{#each $table.getHeaderGroups() as headerGroup}
			<tr class="bg-slate-600/75">
				{#each headerGroup.headers as header}
					<th class="spell-table__cell">
						{#if !header.isPlaceholder}
							<svelte:component
								this={flexRender(header.column.columnDef.header, header.getContext())}
							/>
						{/if}
					</th>
				{/each}
			</tr>
		{/each}
	</thead>
	<tbody>
		{#each $table.getRowModel().rows as row}
			<tr class="spell-table__row">
				{#each row.getVisibleCells() as cell}
					<td class="spell-table__cell">
						<svelte:component this={flexRender(cell.column.columnDef.cell, cell.getContext())} />
					</td>
				{/each}
			</tr>
		{/each}
	</tbody>
</table>

<style lang="scss">
	.spell-table {
		width: 100%;
		border-collapse: separate !important;

		&__cell {
			padding: 0.5rem;
		}
	}
</style>
