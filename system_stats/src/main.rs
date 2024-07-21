use sysinfo::{Component, Components, System};
use fltk::{
    app,
    button::*,
    group::{Flex, Tabs},
    menu::{MenuButton},
    prelude::{GroupExt, MenuExt, WidgetBase, WidgetExt, WindowExt},
    window::Window,
};
use std::fs::OpenOptions;
use std::io::prelude::*;
use std::time::Duration;
use std::thread;
pub use libc::c_int;

fn _cpu_informations() -> Components {
    let temperatures = Components::new_with_refreshed_list();

    return temperatures;
    }


fn _log_data_system(system: &System) {
    let cpu_speed = system.global_cpu_info().frequency(); // em MHz
    let ram_speed = system.total_memory(); // em KB
    let timestamp = chrono::Local::now().to_rfc3339();

}

fn interface(system: &System,component: &Components) {
    let _tab = Tabs::default_fill();

    let mut grp1 = Flex::default_fill().with_label("PAGINA PRINCIPAL");
    let mut col = Flex::default_fill().column();
    grp1.fixed(&col, 160);
    col.set_pad(10);

    let mut speed_cpu = MenuButton::default().with_label("CPU_Speed");
    speed_cpu.label();

    let mut ram_speed = MenuButton::default().with_label("RAM_Speed");
    ram_speed.label();

    let mut timestamp = MenuButton::default().with_label("Timestamp");
    timestamp.label();

    col.end();
    grp1.end()
}


fn main() {
    //Initialize app
    let app = app::App::default();
    let mut wind = Window::new(100, 100, 400, 300, "App");
    let mut tabs = Tabs::default().with_size(400, 300);
    let mut grp = Flex::default_fill().column();

    //Initialize the system
    let mut system = System::new_all();
    //Loop
    loop {
        system.refresh_all();
        _log_data_system(&system);
        _cpu_informations();
        thread::sleep(Duration::from_secs(10));
    }
   let _ = app.run();
}
