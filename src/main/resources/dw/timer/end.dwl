%dw 2.0
output application/java
import * from dw::util::Timer
---
currentMilliseconds() - vars.executionStart