.class Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;
.super Ljava/lang/Object;
.source "LiveIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/BitmapCacheContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BitmapInfo"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p1, p0, Lcom/android/launcher3/common/view/BitmapCacheContainer$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 287
    return-void
.end method
