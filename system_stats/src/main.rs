use sysinfo::{
    Components, System,
};
use std::fs::OpenOptions;
use std::io::prelude::*;
use std::time::Duration;
use std::thread;
pub use libc::c_int;

fn _cpu_informations() {
    let temperatures = Components::new_with_refreshed_list();
    for temprature in &temperatures{
        println!("{temprature:?}")
    }
}

fn _log_data_system(system: &System) {
    let cpu_speed = system.global_cpu_info().frequency(); // em MHz
    let ram_speed = system.total_memory(); // em KB
    let timestamp = chrono::Local::now().to_rfc3339();

    println!("{},  {},  {}", cpu_speed, ram_speed, timestamp)
}


fn main() {
    //Initialize the system
    let mut system = System::new_all();
    //Loop
    loop {
        system.refresh_all();
        _log_data_system(&system);
        _cpu_informations();
        thread::sleep(Duration::from_secs(10));
    }
}
