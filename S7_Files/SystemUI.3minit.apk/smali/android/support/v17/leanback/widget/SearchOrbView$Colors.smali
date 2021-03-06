.class public Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
.super Ljava/lang/Object;
.source "SearchOrbView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/SearchOrbView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colors"
.end annotation


# instance fields
.field public brightColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public color:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field public iconColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "brightColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "iconColor"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput p1, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    .line 93
    if-ne p2, p1, :cond_0

    invoke-static {p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->getBrightColor(I)I

    move-result p2

    .end local p2    # "brightColor":I
    :cond_0
    iput p2, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->brightColor:I

    .line 94
    iput p3, p0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->iconColor:I

    .line 91
    return-void
.end method

.method public static getBrightColor(I)I
    .locals 8
    .param p0, "color"    # I

    .prologue
    const/high16 v7, 0x42190000    # 38.25f

    const v6, 0x3f59999a    # 0.85f

    .line 119
    const/high16 v2, 0x42190000    # 38.25f

    .line 120
    .local v2, "brightnessValue":F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v4, v5

    .line 121
    .local v4, "red":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v3, v5

    .line 122
    .local v3, "green":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v1, v5

    .line 123
    .local v1, "blue":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    float-to-int v0, v5

    .line 124
    .local v0, "alpha":I
    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method
