.class public Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;
.super Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;
.source "OpenThemeSpriteView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mIsTop:Z

.field protected mSprites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/wallpaper/theme/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundId"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    const-string/jumbo v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    .line 45
    invoke-static {p1, p2}, Lcom/android/keyguard/wallpaper/theme/OpenThemeUtil;->loadBackgroundBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 69
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mIsTop:Z

    if-eqz v2, :cond_0

    .line 70
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sprite$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/theme/Sprite;

    .line 76
    .local v0, "sprite":Lcom/android/keyguard/wallpaper/theme/Sprite;
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/Sprite;->onUpdate()V

    .line 77
    invoke-virtual {v0, p1}, Lcom/android/keyguard/wallpaper/theme/Sprite;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 72
    .end local v0    # "sprite":Lcom/android/keyguard/wallpaper/theme/Sprite;
    .end local v1    # "sprite$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 68
    .restart local v1    # "sprite$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/theme/OpenThemeSurfaceView;->onDetachedFromWindow()V

    .line 55
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    iput-object v3, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sprite$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/theme/Sprite;

    .line 61
    .local v0, "sprite":Lcom/android/keyguard/wallpaper/theme/Sprite;
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/Sprite;->clear()V

    goto :goto_0

    .line 64
    .end local v0    # "sprite":Lcom/android/keyguard/wallpaper/theme/Sprite;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "ondetach2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
