import std.conv;
import std.stdio;
import std.string;
import std.algorithm.mutation;
import std.algorithm.iteration;
import std.algorithm.searching;

void main(){
	krasokorculovanie();
	pizza_1();
	pizza_2();
}
void krasokorculovanie(){
	int[] array;
	for (int i=0;i<10;i++){
		writeln("Number #"~to!string(i+1));
		array ~= readln().strip.to!int;
	}
	array = array.remove(maxIndex(array));
	array = array.remove(minIndex(array));
	writeln("The score is: "~to!string(sum(array)));
	return;
}
void pizza_1(){
	int[] array;
	int result;
	int input = 1;
	while(input != 0){
		input = readln.strip.to!int;
		if (input!=0){
			array ~= input;
		}
	}
	if (sum(array)>=20){
		array = array.remove(minIndex(array));
	}
	result = sum(array);
	writeln("Výsledná suma je: "~to!string(result));
}
void pizza_2(){
	int[] array;
	int input = 1;
	float num_1;
	float num_2;
	float result;
	while(input != 0){
		input = readln.strip.to!int;
		if (input!=0){
			array ~= input;
		}
	}
	if (sum(array)>21){
		num_1 = array[minIndex(array)] / 2;
		array = array.remove(minIndex(array));
		num_2 = array[minIndex(array)] / 2;
		array = array.remove(minIndex(array));
		result = sum(array) + num_1 + num_2;
	}else{
		result = sum(array);
	}
	writeln("Výsledná suma je: "~to!string(result));
}
