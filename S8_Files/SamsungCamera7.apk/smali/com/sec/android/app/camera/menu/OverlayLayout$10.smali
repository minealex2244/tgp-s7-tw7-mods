.class Lcom/sec/android/app/camera/menu/OverlayLayout$10;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->showVisionIntelligenceEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/menu/OverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/android/app/camera/menu/OverlayLayout;

    .prologue
    .line 889
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$10;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # invokes: Lcom/sec/android/app/camera/menu/OverlayLayout;->startVisionIntelligenceEffectAnimation()V
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$700(Lcom/sec/android/app/camera/menu/OverlayLayout;)V

    .line 893
    return-void
.end method
