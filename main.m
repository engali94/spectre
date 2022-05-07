#import <Cocoa/Cocoa.h>

int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        [NSApplication sharedApplication];
        NSWindow *window = [[NSWindow alloc] initWithContentRect:NSMakeRect(200, 200, 400, 400)
                                                       styleMask:NSTitledWindowMask | NSClosableWindowMask
                                                         backing:NSBackingStoreBuffered
                                                           defer:NO];
        RaytracePreviewView *view = [[NSView alloc] initWithRect: NSMakeRect(200, 200, 400, 400)];
        window.contentView = view;
        [window makeKeyAndOrderFront:nil];
        [NSApp activateIgnoringOtherApps:YES];
        printf("activated\n");
        [NSApp run];
    }
    return 0;
}
