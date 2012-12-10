// Return codes, assertions

#ifndef COMMON_H
#define COMMON_H



#ifdef DEBUG

#	include<iostream>
	using std::cout;
	using std::endl;
#	include<cassert>
	//~ class Assertion_Failure: public std::exception{
		//~ public: 
			//~ Assertion_Failure (const char* str) throw() : 
				//~ error_message(str) {} 
			//~ virtual ~Assertion_Failure() throw() {}
			//~ virtual const char* what() const throw() {
				//~ return error_message;
			//~ } 
		//~ private: 
			//~ const char* error_message;
	//~ };
	//~ #define assert(expr) ((expr)? ((void)0): throw Assertion_Failure (#expr))

#else

#	define assert(expr) ((void)0)

#endif//DEBUG



namespace reports{
	enum report {OK, NO_MORE_ROOM, DUPLICATE, CIRCULAR_LINKS, IO_ERROR, BAD_FORMAT, EMPTY,
		NOT_FOUND, ACCESS_VIOLATION, N_OF_REPORT_MESSAGES};
	static const char* read [] = {"OK", "NO_MORE_ROOM", "DUPLICATE", "CIRCULAR_LINKS",
		"IO_ERROR", "BAD_FORMAT", "EMPTY", "NOT_FOUND", "ACCESS_VIOLATION"};
	
	inline void check(){
		assert ((unsigned int) N_OF_REPORT_MESSAGES == sizeof(read)/(sizeof(read[0])));
	}
}



#endif//COMMON_H