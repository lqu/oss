all:	closed

closed:	Apache-2.0

Public:
	@echo $@

MIT:	Public
	@echo $@

BSD-new:	MIT
	@echo $@

Apache-2.0:	BSD-new
	@echo $@

MPL-1.1:	BSD-new
	@echo $@

LGPLv2.1:	BSD-new LGPLv2.1-plus
	@echo $@

LGPLv2.1-plus:	BSD-new
	@echo $@

LGPLv3-or-plus: BSD-new Apache-2.0 LGPLv2.1-plus
	@echo $@

GPLv2:	LGPLv2.1 GPLv2-plus
	@echo $@

GPLv2-plus:	LGPLv2.1 LGPLv2.1-plus
	@echo $@

GPLv3-or-plus:	GPLv2-plus LGPLv3-or-plus
	@echo $@

Affero-GPLv3:	GPLv3-or-plus
	@echo $@


