//
//  VideoViewController.m
//  Video
//
//  Created by Laboratorio San Agustin on 17/05/14.
//  Copyright (c) 2014 iOS Coding Lab. All rights reserved.
//

@import AVFoundation;

#import "VideoViewController.h"

NSString * const kVideoURL = @"http://video.ted.com/talk/podcast/2007/None/VilayanurRamachandran_2007-480p.mp4";

NSString * const kMediaURL = @"http://soundcloud.vo.llnwd.net/SKM263ScD8ci.128.mp3?AWSAccessKeyId=AKIAJNIGGLK7XA7YZSNQ&Expires=1400356135&Signature=%2FqNjrGekmPEoM4190IuozthrtiM%3D&e=1400356135&h=876a11de1c85b06b62c3cc81d5061946";

@interface VideoViewController ()

@property (strong, nonatomic) AVPlayerItem *item;
@property (strong, nonatomic) AVPlayer *player;

@end

@implementation VideoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    //NSString *path = [[NSBundle mainBundle] pathForResource:@"song" ofType:@"mp3"];
    
    NSURL *url = [NSURL URLWithString:kMediaURL];
    self.item = [AVPlayerItem playerItemWithURL:url];
    self.player = [AVPlayer playerWithPlayerItem:self.item];
    
    /*
    AVPlayerLayer *layer = [AVPlayerLayer layer];
    layer.frame = self.view.frame;
    layer.player = self.player;
    [self.view.layer addSublayer:layer];
     */
    
    [self.player play];

}
- (IBAction)pause:(UIButton *)sender
{
    [self.player pause];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
