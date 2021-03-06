module main;

import io = watt.io;

import battery.driver;
import battery.license;
import battery.util.priority;


fn main(args: string[]) int
{
	// Move this somewhere else.
	setLowPriority();

	drv := new DefaultDriver(ref args);
	drv.process(args);

	return 0;
}

fn printLicense()
{
	foreach (l; licenseArray) {
		io.writefln(l);
	}
}
