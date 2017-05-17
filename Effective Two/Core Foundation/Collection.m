#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		// CFArray
		CFStringRef strings[3] = { CFSTR("One"), CFSTR("Two"), CFSTR("Three") };
		CFArrayRef array = CFArrayCreate(NULL, (void *)strings, 3, &kCFTypeArrayCallBacks);
		
		CFShow(array);
		CFRelease(array);
		
		// CFDictionary
		#define kCount 3
		CFStringRef keys[kCount] = { CFSTR("One"), CFSTR("Two"), CFSTR("Three") }; 
		CFStringRef values[kCount] = { CFSTR("Foo"), CFSTR("Bar"), CFSTR("Baz") };
		
		CFDictionaryRef dict = CFDictionaryCreate(NULL, (void *)keys, (void *)values, kCount, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
		CFShow(dict);
		CFRelease(dict);
	}
}