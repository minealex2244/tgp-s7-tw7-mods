.class Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;
.super Ljava/lang/Object;
.source "TimerSettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/TimerSettingFragment;->initializeList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    # invokes: Lcom/sec/android/app/camera/setting/TimerSettingFragment;->getTimer()I
    invoke-static {v0}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/TimerSettingFragment;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const-string v0, "TimerSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/TimerSettingFragment$1;->this$0:Lcom/sec/android/app/camera/setting/TimerSettingFragment;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->changeBooleanToInt(Ljava/lang/Boolean;)I

    move-result v1

    # invokes: Lcom/sec/android/app/camera/setting/TimerSettingFragment;->setInterval(I)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/setting/TimerSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/TimerSettingFragment;I)V

    .line 233
    :cond_0
    return-void
.end method
