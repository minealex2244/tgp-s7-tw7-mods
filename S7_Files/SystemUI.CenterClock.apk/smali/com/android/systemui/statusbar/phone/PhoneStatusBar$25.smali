.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isShortcutDrag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 7703
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->isShortcutDrag:Z

    .line 7703
    return-void
.end method


# virtual methods
.method public startNotifcationIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 7734
    if-nez p1, :cond_0

    .line 7735
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "startNotifcationIntent, null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7736
    return-void

    .line 7738
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 7739
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 7733
    return-void
.end method

.method public startShortcutApp(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    .line 7712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->isShortcutDrag:Z

    .line 7713
    if-nez p1, :cond_0

    .line 7714
    const-string/jumbo v0, "PhoneStatusBar"

    const-string/jumbo v1, "startShortcutApp, null intent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7715
    return-void

    .line 7717
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->-set15(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 7718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 7711
    return-void
.end method

.method public startShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 7722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 7723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->isShortcutDrag:Z

    .line 7721
    :cond_0
    return-void
.end method

.method public stopShortcutDragAnimation()V
    .locals 1

    .prologue
    .line 7728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 7729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;->isShortcutDrag:Z

    .line 7727
    :cond_0
    return-void
.end method
