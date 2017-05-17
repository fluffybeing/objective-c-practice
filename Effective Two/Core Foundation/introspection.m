#import <Foundation/Foundation.h>
#import <CoreFoundation/CoreFoundation.h>



int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		CFStringRef string = CFSTR("Hello");
		NSLog(@"%@", string);
		CFShowStr(string);
		
		CFGetTypeID(string);
		
		CFArrayRef array = CFArrayCreate(NULL, (const void**)&string, 1, &kCFTypeArrayCallBacks);
		CFShow(array);
				
	}
}