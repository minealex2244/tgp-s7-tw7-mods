.class Lcom/samsung/android/glview/GLContext$5;
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
    .line 315
    iput-object p1, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 319
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 320
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 324
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 325
    const-string v0, "GLContext"

    const-string v1, "Touch Exploration ContentObserver onChange"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    # invokes: Lcom/samsung/android/glview/GLContext;->updateTouchExplorationEnabled()V
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$400(Lcom/samsung/android/glview/GLContext;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    # getter for: Lcom/samsung/android/glview/GLContext;->mIsTouchExplorationEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/glview/GLContext;->access$500(Lcom/samsung/android/glview/GLContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->enableAccessibilityService(Landroid/content/Context;)V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/glview/GLContext$5;->this$0:Lcom/samsung/android/glview/GLContext;

    sget-object v1, Lcom/samsung/android/glview/GLContext;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/glview/GLContext;->disableAccessibilityService(Landroid/content/Context;)V

    goto :goto_0
.end method
