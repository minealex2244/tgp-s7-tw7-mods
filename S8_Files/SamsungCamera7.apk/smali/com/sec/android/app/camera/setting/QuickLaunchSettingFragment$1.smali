.class Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;
.super Landroid/database/ContentObserver;
.source "QuickLaunchSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 56
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_1

    .line 57
    const-string v2, "QuickLaunchSettingFragment"

    const-string v3, "Camera Activity is null."

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getQuickLaunch()I
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)I

    move-result v1

    .line 62
    .local v1, "quickLaunchValue":I
    if-eq v1, v3, :cond_2

    if-ne v1, v5, :cond_3

    :cond_2
    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 64
    .local v0, "doubleTabCheck":Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mPowerButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setEnabled(Z)V

    .line 65
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    # getter for: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->mHomeButton:Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;
    invoke-static {v2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$200(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/setting/LeftCheckBoxPreference;->setEnabled(Z)V

    .line 66
    if-ne v1, v3, :cond_4

    .line 67
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    const-string v3, "home_button"

    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "doubleTabCheck":Ljava/lang/Boolean;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 68
    .restart local v0    # "doubleTabCheck":Ljava/lang/Boolean;
    :cond_4
    if-ne v1, v5, :cond_0

    .line 69
    iget-object v2, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    const-string v3, "power_button"

    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateRadioButtons(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Ljava/lang/String;)V

    goto :goto_0
.end method
