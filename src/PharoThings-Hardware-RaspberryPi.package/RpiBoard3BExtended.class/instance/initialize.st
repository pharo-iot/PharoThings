initialization
initialize
	super initialize.
	self
		addNewConnector: 'P1'
		with:
			{PotPower3dot3VPin new.	PotPower5VPin new.
			self pin3. PotPower5VPin new.
			self pin5. PotGroundPin new.
			(PotClockGPIOPin id: 4 number: 7). (PotGPIOPin id: 14 number: 15).
			PotGroundPin new. (PotGPIOPin id: 15 number: 16).
			(PotGPIOPin id: 17 number: 0). (PotPwmGPIOPin id: 18 number: 1).
			(PotGPIOPin id: 27 number: 2). PotGroundPin new.
			(PotGPIOPin id: 22 number: 3). (PotGPIOPin id: 23 number: 4).
			PotPower3dot3VPin new. (PotGPIOPin id: 24 number: 5).
			(PotGPIOPin id: 10 number: 12). PotGroundPin new.
			(PotGPIOPin id: 9 number: 13). (PotGPIOPin id: 25 number: 6).
			(PotGPIOPin id: 11 number: 14). (PotGPIOPin id: 8 number: 10).
			PotGroundPin new. (PotGPIOPin id: 7 number: 11).
			(PotGPIOPin id: 0 number: 30). (PotGPIOPin id: 1 number: 31).
			(PotClockGPIOPin id: 5 number: 21). PotGroundPin new.
			(PotClockGPIOPin id: 6 number: 22). (PotPwmGPIOPin id: 12 number: 26).
			(PotPwmGPIOPin id: 13 number: 23). PotGroundPin new.
			(PotPwmGPIOPin id: 19 number: 24). (PotGPIOPin id: 16 number: 27).
			(PotGPIOPin id: 26 number: 25). (PotGPIOPin id: 20 number: 28).
			PotGroundPin new. (PotClockGPIOPin id: 21 number: 29)}