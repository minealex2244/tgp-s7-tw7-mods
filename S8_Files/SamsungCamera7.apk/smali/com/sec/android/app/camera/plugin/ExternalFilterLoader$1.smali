.class Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;
.super Landroid/database/ContentObserver;
.source "ExternalFilterLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 134
    const-string v5, "ExternalFilterLoader"

    const-string v7, "onChange"

    invoke-static {v5, v7}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "separated":[Ljava/lang/String;
    aget-object v0, v3, v4

    .line 137
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader$1;->this$0:Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;

    # getter for: Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;
    invoke-static {v5}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->access$000(Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;)Lcom/sec/android/app/camera/interfaces/CameraContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    .line 138
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 139
    .local v2, "msg":Landroid/os/Message;
    const/4 v5, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    move v4, v5

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 156
    :goto_1
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 159
    :cond_1
    return-void

    .line 139
    :sswitch_0
    const-string v7, "notifyAdd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v4, "notifyDelete"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v6

    goto :goto_0

    :sswitch_2
    const-string v4, "isUpdated"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 141
    :pswitch_0
    const-string v4, "ExternalFilterLoader"

    const-string v5, "onChange INSTALL"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v4, 0x6b

    iput v4, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 145
    :pswitch_1
    const-string v4, "ExternalFilterLoader"

    const-string v5, "onChange UNINSTALL"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/16 v4, 0x6c

    iput v4, v2, Landroid/os/Message;->what:I

    goto :goto_1

    .line 149
    :pswitch_2
    const-string v4, "ExternalFilterLoader"

    const-string v5, "onChange UPDATED"

    invoke-static {v4, v5}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/16 v4, 0x6d

    iput v4, v2, Landroid/os/Message;->what:I

    .line 151
    invoke-static {v6}, Lcom/sec/android/app/camera/plugin/ExternalFilterLoader;->setNewFiltersUploadInfo(Z)V

    goto :goto_1

    .line 139
    :sswitch_data_0
    .sparse-switch
        -0x3087d7cf -> :sswitch_2
        0x3d2cae54 -> :sswitch_1
        0x715f3898 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
