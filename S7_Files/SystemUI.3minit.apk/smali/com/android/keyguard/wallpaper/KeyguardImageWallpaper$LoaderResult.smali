.class Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
.super Ljava/lang/Object;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoaderResult"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final success:Z


# direct methods
.method constructor <init>(ZLandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    .line 592
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    .line 590
    return-void
.end method

.method static fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 3

    .prologue
    .line 600
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method

.method static success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 2
    .param p0, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 596
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;-><init>(ZLandroid/graphics/Bitmap;)V

    return-object v0
.end method
