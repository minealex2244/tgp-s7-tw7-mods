.class Lcom/android/launcher3/Launcher$15;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->shutdownWallpaperScroller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 2634
    iput-object p1, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    # getter for: Lcom/android/launcher3/Launcher;->mPaused:Z
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$1100(Lcom/android/launcher3/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    # getter for: Lcom/android/launcher3/Launcher;->mTiltWallpaperScroller:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$1200(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->shutdown()V

    .line 2638
    iget-object v0, p0, Lcom/android/launcher3/Launcher$15;->this$0:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/Launcher;->resetWallpaperOffsets()V
    invoke-static {v0}, Lcom/android/launcher3/Launcher;->access$1300(Lcom/android/launcher3/Launcher;)V

    .line 2640
    :cond_0
    return-void
.end method
