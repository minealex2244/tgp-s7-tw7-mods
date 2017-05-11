.class Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;
.super Landroid/os/Handler;
.source "TagShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/TagShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagShotHandler"
.end annotation


# instance fields
.field private final mTagShot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/camera/shootingmode/TagShot;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/shootingmode/TagShot;)V
    .locals 1
    .param p1, "tagShot"    # Lcom/sec/android/app/camera/shootingmode/TagShot;

    .prologue
    .line 1153
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1154
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->mTagShot:Ljava/lang/ref/WeakReference;

    .line 1155
    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;

    .prologue
    .line 1150
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->clear()V

    return-void
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->mTagShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 1180
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/TagShot$TagShotHandler;->mTagShot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/TagShot;

    .line 1161
    .local v0, "tagShot":Lcom/sec/android/app/camera/shootingmode/TagShot;
    if-nez v0, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1167
    :pswitch_0
    const-string v1, "TagShot"

    const-string v2, "handleMessage - UPDATE_TAG_INFO_MSG"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    # invokes: Lcom/sec/android/app/camera/shootingmode/TagShot;->updateTagInfo()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2600(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    goto :goto_0

    .line 1171
    :pswitch_1
    # invokes: Lcom/sec/android/app/camera/shootingmode/TagShot;->restoreDefaultShootingMode()V
    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/TagShot;->access$2700(Lcom/sec/android/app/camera/shootingmode/TagShot;)V

    goto :goto_0

    .line 1165
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
