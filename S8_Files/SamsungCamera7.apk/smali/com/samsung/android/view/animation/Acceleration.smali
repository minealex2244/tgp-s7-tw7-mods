.class public Lcom/samsung/android/view/animation/Acceleration;
.super Landroid/view/animation/PathInterpolator;
.source "Acceleration.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    const v0, 0x3ecccccd    # 0.4f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 9
    return-void
.end method
