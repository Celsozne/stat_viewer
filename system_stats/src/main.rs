pub use sysinfo::System;
use std::fs::OpenOptions;
use std::io::prelude::*;
use std::time::Duration;
use std::thread;
pub use libc::c_int;
use libc::sysctl;

fn _get_temperature_of_cpu() -> Option<f64> {
    const TEMPERATURE_KEY: &str = "dev.cpu.0.temperature";

    let mut temperature = 0i32;
    let mut size = std::mem::size_of::<c_int>;

    unsafe {
        let ret = sysctl(
            TEMPERATURE_KEY.as_ptr() as i8,
            &mut temperature as *mut _,
            &mut size,
            std::ptr::null(),
            0,
        );
        if ret == 0 {
            Some(temperature as f64 / 10.0)
        }  else {
            None
        }
    }
}

fn _log_data_system(system: &System, log_file: &mut std::fs::File) {

    // get the data from cpu

    let _cpu_speed = system.global_cpu_info().frequency(); //in MHz
    let _cpu_temperature = _get_temperature_of_cpu().unwrap_or(-1f64); //in Celsius

    // get the data from memory

    let ram_speed = system.total_memory(); //in KB

    //obtain timestamp
    let timestamp = chrono::Local::now().to_rfc3339();

    //save the data
    let _log_entry = format!("{}, {}, {}, {} \n", timestamp, _cpu_speed, _cpu_temperature, ram_speed);
    log_file.write_all(_log_entry.as_bytes()).expect("Failed to write to log file");
}


fn main() {
    //Initialize the system
    let mut system = System::new_all();
    let _log_file_path = "system_log.csv";

    //Create or open the log file
    let mut _log_file = OpenOptions::new().create(true).write(true)
        .append(true).open(_log_file_path).expect("Failed to open log file");

    if _log_file.metadata().unwrap().len()==0{
        writeln!(_log_file, "timestamp, cpu_speed_mhz, cpu_tmep_c, ram_speed_kb")
            .expect("Failed to wriete header to log file");
    }

    //Loop
    loop {
        system.refresh_all();
        _log_data_system(&system, &mut _log_file);
        thread::sleep(Duration::from_nanos(10));
    }
}
