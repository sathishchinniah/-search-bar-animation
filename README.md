# Description

* A simple animation occur for serch bar. when user press the + button the seach bar will shown. Again when user press same button , the search bar will disappear

# screenshots
![screen shot 2015-12-02 at 12 10 25 am](https://cloud.githubusercontent.com/assets/12906173/11510308/1f657098-9889-11e5-8b34-df96c0054870.png)



# code

```


- (void)viewDidLoad {
    [super viewDidLoad];
    
    addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addButtonPressed:)];
    self.navigationItem.rightBarButtonItem = addButton;
    txtField.hidden = YES;
    
    GettouchStr=@"hidden";
    
}

- (void)addButtonPressed:(id)sender
{
    if ([GettouchStr isEqualToString:@"hidden"])
    {
        
        txtField.alpha = 0;
        [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseIn animations:^{
            txtField.alpha = 0;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                txtField.alpha = 1;
                txtField.hidden = NO;
                GettouchStr=@"UNhidden";
            } completion:nil];
        }];
        
        
        
        
        
    }
    else
    {
        txtField.alpha = 1;
        [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseIn animations:^{
            txtField.alpha = 1;
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.f delay:0.f options:UIViewAnimationOptionCurveEaseInOut animations:^{
                txtField.alpha = 0;
                txtField.hidden = YES;
                GettouchStr=@"hidden";
            } completion:nil];
        }];
        
        
        
        
        
        
    }
    
```
