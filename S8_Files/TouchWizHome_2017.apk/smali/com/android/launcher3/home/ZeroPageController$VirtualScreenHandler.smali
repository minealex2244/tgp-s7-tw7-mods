.class Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;
.super Landroid/os/Handler;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/ZeroPageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualScreenHandler"
.end annotation


# static fields
.field private static final MAX_INTERVAL:J = 0x19L

.field private static final MIN_INTERVAL:J = 0xbL

.field private static final MSG_SET_OFFSET:I = 0x1


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher3/home/ZeroPageController;",
            ">;"
        }
    .end annotation
.end field

.field private mPreOffset:I

.field private mStop:Z

.field final synthetic this$0:Lcom/android/launcher3/home/ZeroPageController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController;Landroid/os/Looper;)V
    .locals 1
    .param p2, "controller"    # Lcom/android/launcher3/home/ZeroPageController;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    .line 923
    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    .line 924
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 920
    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mStop:Z

    .line 921
    iput v0, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mPreOffset:I

    .line 925
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mController:Ljava/lang/ref/WeakReference;

    .line 926
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 944
    if-eqz p1, :cond_0

    .line 945
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/ZeroPageController;

    .line 946
    .local v0, "controller":Lcom/android/launcher3/home/ZeroPageController;
    if-eqz v0, :cond_0

    .line 947
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 998
    .end local v0    # "controller":Lcom/android/launcher3/home/ZeroPageController;
    :cond_0
    :goto_0
    return-void

    .line 949
    .restart local v0    # "controller":Lcom/android/launcher3/home/ZeroPageController;
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 950
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "offsetX"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 951
    .local v6, "offset":I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "interval"

    const-wide/16 v10, 0x0

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 952
    .local v4, "interval":J
    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v1

    .line 953
    .local v1, "currentOffset":Landroid/graphics/Point;
    if-eqz v1, :cond_6

    iget v7, v1, Landroid/graphics/Point;->x:I

    if-eq v6, v7, :cond_6

    .line 954
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "force"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 955
    .local v3, "force":Z
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;
    invoke-static {v7}, Lcom/android/launcher3/home/ZeroPageController;->access$1500(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 956
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mStop:Z

    .line 957
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    const-wide/16 v8, 0xb

    cmp-long v7, v4, v8

    if-ltz v7, :cond_1

    const-wide/16 v8, 0x19

    cmp-long v7, v4, v8

    if-lez v7, :cond_2

    .line 959
    :cond_1
    const-wide/16 v8, 0x19

    const-wide/16 v10, 0xb

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 963
    :cond_2
    const/4 v7, 0x0

    # invokes: Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z
    invoke-static {v0, v6, v7, v3}, Lcom/android/launcher3/home/ZeroPageController;->access$1400(Lcom/android/launcher3/home/ZeroPageController;IIZ)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 964
    if-eqz v3, :cond_3

    if-eqz v6, :cond_3

    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mPreOffset:I

    if-ne v6, v7, :cond_3

    .line 965
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    .line 967
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mStop:Z

    .line 971
    :cond_4
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_1
    iget-boolean v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mStop:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v7}, Lcom/android/launcher3/home/ZeroPageController;->access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 977
    :cond_5
    iput v6, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mPreOffset:I

    .line 978
    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;
    invoke-static {v7}, Lcom/android/launcher3/home/ZeroPageController;->access$1500(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    goto/16 :goto_0

    .line 972
    :catch_0
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleMessage - InterruptedException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 980
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "force":Z
    :cond_6
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-ltz v7, :cond_7

    const-wide/16 v8, 0x19

    cmp-long v7, v4, v8

    if-lez v7, :cond_8

    .line 981
    :cond_7
    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x19

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 984
    :cond_8
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 988
    :goto_2
    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "skip setOffset - offsetX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 985
    :catch_1
    move-exception v2

    .line 986
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    # getter for: Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "handleMessage - InterruptedException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 947
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized removeMsg()V
    .locals 1

    .prologue
    .line 929
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mStop:Z

    .line 931
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->mPreOffset:I

    .line 932
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->this$0:Lcom/android/launcher3/home/ZeroPageController;

    # getter for: Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;
    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->access$1500(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    monitor-exit p0

    return-void

    .line 929
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setOffsetHandler(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 936
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 937
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 938
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 939
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    monitor-exit p0

    return-void

    .line 936
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
