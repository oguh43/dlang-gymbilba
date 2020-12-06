import std.conv;
import std.stdio;
import std.string;
import std.algorithm.mutation;
import std.algorithm.iteration;
import std.algorithm.searching;

void main(){
	krasokorculovanie();
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

//https://github.com/filip12h/Bilikova/blob/master/BONUSOV%C3%89%20%C3%9ALOHY%20-%201.sada%20(for%2C%20if)
