#import <Foundation/Foundation.h>

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		// Toll Bridge
		NSArray *nsArray = @[@"Foo"];
		printf("%ld", CFArrayGetCount( (__bridge CFArrayRef)nsArray));
	}
}