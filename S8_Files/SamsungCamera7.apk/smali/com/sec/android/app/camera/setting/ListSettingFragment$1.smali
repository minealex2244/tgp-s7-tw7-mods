.class Lcom/sec/android/app/camera/setting/ListSettingFragment$1;
.super Ljava/lang/Object;
.source "ListSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/ListSettingFragment;->initializeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/ListSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/setting/ListSettingFragment;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/ListSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/ListSettingFragment;

    # invokes: Lcom/sec/android/app/camera/setting/ListSettingFragment;->setPictureFormat(Z)V
    invoke-static {v0, p2}, Lcom/sec/android/app/camera/setting/ListSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/ListSettingFragment;Z)V

    .line 437
    const-string v2, "6042"

    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    .line 438
    return-void

    .line 437
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
