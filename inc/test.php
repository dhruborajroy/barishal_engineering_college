
<?php 
			$year=date("Y");
			$holidays=array();
			$holidays = [
				"$year-02-21" => "International Mother Language Day",
				"$year-03-17" => "Sheikh Mujibur Rahman's Birthday",
				"$year-03-26" => "Independence Day",
				"$year-04-14" => "Bengali New Year",
				"$year-05-01" => "May Day",
				"$year-05-17" => "Buddha Purnima",
				"$year-06-28" => "Eid-ul-Adha",
				"$year-06-29" => "Eid-ul-Adha Holiday",
				"$year-06-30" => "Eid-ul-Adha Holiday",
				"$year-07-07" => "Ashura",
				"$year-08-15" => "National Mourning Day",
				"$year-09-16" => "Eid-e-Milad-un-Nabi",
				"$year-10-24" => "Durga Puja (Bijoya Dashami)",
				"$year-12-16" => "Victory Day",
				"$year-12-25" => "Christmas Day"
			];

			$holidayEvents = [];
			foreach ($holidays as $date => $title) {
				$holidayEvents[] = [
					"title" => $title,
					"start" => $date . "T00:00:00"
				];
			}

			echo json_encode($holidayEvents, JSON_PRETTY_PRINT);

			?>