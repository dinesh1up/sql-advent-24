(decoration_id: INT, decoration_name: VARCHAR, energy_cost_per_hour: DECIMAL)

SELECT decoration_name, energy_cost_per_hour FROM hall_decorations order by energy_cost_per_hour LIMIT 5;
