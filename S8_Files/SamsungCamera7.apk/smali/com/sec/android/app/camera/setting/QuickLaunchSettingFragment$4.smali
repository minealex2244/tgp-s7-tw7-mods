.class Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$4;
.super Ljava/lang/Object;
.source "QuickLaunchSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->darkScreenTurnOffPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$4;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$4;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->dismissAllDialog()V
    invoke-static {v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$500(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$4;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "QUICKLAUNCH_FRAGMENT"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    .line 216
    .local v0, "quickLaunchSettingFragment":Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;
    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->updateSwitchBar()V
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$600(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;)V

    .line 217
    return-void
.end method
