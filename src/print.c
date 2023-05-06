#include <stdio.h>
#include <mocha/mocha.h>

void print_null(ptr v)
{
	(void) v;
	printf("(null)");
}

void print_i8(i8 v)
{
	printf("%hhd", v);
}

void print_u8(u8 v)
{
	printf("%hhu", v);
}

void print_i16(i16 v)
{
	printf("%hd", v);
}

void print_u16(u16 v)
{
	printf("%hu", v);
}

void print_i32(i32 v)
{
	printf("%d", v);
}

void print_u32(u32 v)
{
	printf("%u", v);
}

void print_f32(f32 v)
{
	printf("%f", v);
}

void print_f64(f64 v)
{
	printf("%lf", v);
}

void print_i64(i64 v)
{
	printf("%ld", v);
}

void print_u64(u64 v)
{
	printf("%lu", v);
}

void print_ptr(ptr v)
{
	printf("%p", v);
}

void print_str(str v)
{
	printf("%*.s", v.len, (char *) v.ptr);
}
