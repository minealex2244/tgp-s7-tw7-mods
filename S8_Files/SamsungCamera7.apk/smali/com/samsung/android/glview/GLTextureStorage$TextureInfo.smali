.class public Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;
.super Ljava/lang/Object;
.source "GLTextureStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/glview/GLTextureStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureInfo"
.end annotation


# instance fields
.field public mCounter:I

.field public mHeight:F

.field public mTextureID:I

.field public mWidth:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0
    .param p1, "textureId"    # I
    .param p2, "counter"    # I
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput p1, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mTextureID:I

    .line 141
    iput p2, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mCounter:I

    .line 142
    iput p3, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mWidth:F

    .line 143
    iput p4, p0, Lcom/samsung/android/glview/GLTextureStorage$TextureInfo;->mHeight:F

    .line 144
    return-void
.end method
