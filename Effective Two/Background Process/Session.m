#import <Foundation/Foundation.h>

@interface ConnectionTest: NSObject 
@end

@implementation ConnectionTest 

- (NSURL *)documentURLForPath:(NSString *) path {
	static NSURL *documentDirectoryURL;
	static dispatch_once_t onceToken;
	
	dispatch_once(&onceToken, ^{
		NSString *docPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
		documentDirectoryURL = [NSURL fileURLWithPath:docPath];
	});
	
	return [documentDirectoryURL URLByAppendingPathComponent: path];
}

@end

int main(int argc, char *argv[]) {
	@autoreleasepool {
		
		NSURLSessionConfiguration *config = [NSURLSessionConfiguration defaultSessionConfiguration];
		[config setAllowsCellularAccess: NO];
		NSURLSession *session = [NSURLSession sessionWithConfiguration: config]; 
		
		// Move file to document directory
	}
}

