.class Lcom/android/launcher3/LauncherAppState$1;
.super Landroid/database/ContentObserver;
.source "LauncherAppState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherAppState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/LauncherAppState;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    # getter for: Lcom/android/launcher3/LauncherAppState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$300(Lcom/android/launcher3/LauncherAppState;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    # getter for: Lcom/android/launcher3/LauncherAppState;->mBadgeRefreshRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->access$200(Lcom/android/launcher3/LauncherAppState;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 475
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    # getter for: Lcom/android/launcher3/LauncherAppState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->access$300(Lcom/android/launcher3/LauncherAppState;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppState$1;->this$0:Lcom/android/launcher3/LauncherAppState;

    # getter for: Lcom/android/launcher3/LauncherAppState;->mBadgeRefreshRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->access$200(Lcom/android/launcher3/LauncherAppState;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 476
    return-void
.end method
