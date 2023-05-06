/*
 * Mocha standard input/output module
 * Author: fenze <contact@fenze.dev>
 */

fn print(v: null) (extern, abiname("print_null")) {}

fn print(v: i8) (extern, abiname("print_i8")) {}
fn print(v: u8) (extern, abiname("print_u8")) {}

fn print(v: i16) (extern, abiname("print_i16")) {}
fn print(v: u16) (extern, abiname("print_u16")) {}

fn print(v: i32) (extern, abiname("print_i32")) {}
fn print(v: u32) (extern, abiname("print_u32")) {}

fn print(v: f32) (extern, abiname("print_f32")) {}
fn print(v: f64) (extern, abiname("print_f64")) {}

fn print(v: i64) (extern, abiname("print_i64")) {}
fn print(v: u64) (extern, abiname("print_u64")) {}
