.class Lcom/samsung/android/glview/GLContext$6;
.super Landroid/database/ContentObserver;
.source "GLContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/glview/GLContext;


# direct methods
.method constructor <init>(Lcom/samsung/android/glview/GLContext;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/glview/GLContext;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 336
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    # getter for: Lcom/samsung/android/glview/GLContext;->mPaused:Z
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$600(Lcom/samsung/android/glview/GLContext;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const-string v0, "GLContext"

    const-string v1, "GLContext is pausing, not updated"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-virtual {v0}, Lcom/samsung/android/glview/GLContext;->enableOrientationListener()V

    goto :goto_0

    .line 345
    :cond_2
    sget-object v0, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$6;->this$0:Lcom/samsung/android/glview/GLContext;

    # invokes: Lcom/samsung/android/glview/GLContext;->disableOrientationListener()V
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$700(Lcom/samsung/android/glview/GLContext;)V

    goto :goto_0
.end method
