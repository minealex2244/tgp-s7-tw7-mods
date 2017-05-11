.class Lcom/sec/android/app/camera/menu/OverlayLayout$7;
.super Ljava/lang/Object;
.source "OverlayLayout.java"

# interfaces
.implements Lcom/sec/android/app/camera/widget/gl/StickerRectHandler$WatermarkImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/menu/OverlayLayout;->setStickerDefaultPosition(II)V
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
    .line 725
    iput-object p1, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$7;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWatermarkImageUpdate(ILjava/lang/Object;II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "bitmap"    # Ljava/lang/Object;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sec/android/app/camera/menu/OverlayLayout$7;->this$0:Lcom/sec/android/app/camera/menu/OverlayLayout;

    # getter for: Lcom/sec/android/app/camera/menu/OverlayLayout;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;
    invoke-static {v0}, Lcom/sec/android/app/camera/menu/OverlayLayout;->access$400(Lcom/sec/android/app/camera/menu/OverlayLayout;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/interfaces/Engine;->setEffectParameter(ILjava/lang/Object;II)V

    .line 729
    return-void
.end method
