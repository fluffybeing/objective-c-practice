#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		// Create string using c string
		const char *cstring = "Hello World!";
		CFStringRef string = CFStringCreateWithCString(NULL, cstring, kCFStringEncodingUTF8);
		
		CFRelease(string);
		
		// Convert to String
		const char *convertedString = CFStringGetCStringPtr(string, kCFStringEncodingUTF8);
		
		CFStringRef strings[3] = { CFSTR("One"), CFSTR("Two"), CFSTR("Three") };
			char * buffer = NULL;
			const char * cstring = NULL;
			for (unsigned i = 0; i < 3; ++i) {
			  cstring = MYCFStringGetUTF8String(strings[i], &buffer);
			  printf("%s\n", cstring);
			}
		free(buffer);
	}
}