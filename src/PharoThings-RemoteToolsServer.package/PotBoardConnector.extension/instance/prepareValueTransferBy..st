*PharoThings-RemoteToolsServer
prepareValueTransferBy: aSeamlessObjectTransporter

	aSeamlessObjectTransporter transferByValue: pins.
	pins do: [:each | aSeamlessObjectTransporter transferByValue: each ]