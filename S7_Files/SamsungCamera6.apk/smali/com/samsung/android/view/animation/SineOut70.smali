.class public Lcom/samsung/android/view/animation/SineOut70;
.super Landroid/view/animation/PathInterpolator;
.source "SineOut70.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const v2, 0x3e2e147b    # 0.17f

    .line 8
    const v0, 0x3e99999a    # 0.3f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 9
    return-void
.end method
