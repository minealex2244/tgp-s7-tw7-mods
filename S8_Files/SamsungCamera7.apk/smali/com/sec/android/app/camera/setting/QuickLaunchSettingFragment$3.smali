.class Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$3;
.super Ljava/lang/Object;
.source "QuickLaunchSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;

    # invokes: Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->handleSwitchBarClickEvent(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/QuickLaunchSettingFragment;Z)V

    .line 107
    return-void
.end method
