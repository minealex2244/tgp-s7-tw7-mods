.class public Lcom/android/launcher3/util/WhiteBgManager;
.super Ljava/lang/Object;
.source "WhiteBgManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/WhiteBgManager$AttribImage;,
        Lcom/android/launcher3/util/WhiteBgManager$AttribText;
    }
.end annotation


# static fields
.field public static final LIGHT_TEXT_COLOR:I = 0x0

.field public static final PREFERENCES_NEED_DARK_FONT:Ljava/lang/String; = "need_dark_font"

.field public static final PREFERENCES_NEED_DARK_NAVIGATIONBAR:Ljava/lang/String; = "need_dark_navigationbar"

.field public static final PREFERENCES_NEED_DARK_STATUSBAR:Ljava/lang/String; = "need_dark_statusbar"

.field static final TAG:Ljava/lang/String; = "WhiteBgManager"

.field private static sChangeForWhiteBg:Z

.field private static sChangeNavigationBarForWhiteBg:Z

.field private static sChangeStatusBarForWhiteBg:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    .line 37
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeStatusBarForWhiteBg:Z

    .line 38
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeNavigationBarForWhiteBg:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "whiteBg"    # Z

    .prologue
    .line 126
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz p2, :cond_2

    .line 129
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_0
.end method

.method public static changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/widget/ImageView;
    .param p2, "whiteBg"    # Z

    .prologue
    .line 116
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    if-eqz p2, :cond_2

    .line 119
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->sColorFilter:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method

.method public static changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "whiteBg"    # Z

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 95
    return-void
.end method

.method public static changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "whiteBg"    # Z
    .param p3, "forceReload"    # Z

    .prologue
    const/4 v4, 0x0

    .line 99
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    if-eqz p3, :cond_2

    .line 102
    invoke-static {p0, p2, v4}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;ZZ)V

    .line 107
    :goto_1
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    const/4 v1, 0x0

    sget v2, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    sget v3, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 110
    if-eqz p3, :cond_0

    .line 111
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0, v4}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 104
    :cond_2
    const/4 p3, 0x0

    goto :goto_1
.end method

.method public static changeTextColorForBg(Landroid/content/Context;Lcom/android/launcher3/common/view/IconView;ZZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "iv"    # Lcom/android/launcher3/common/view/IconView;
    .param p2, "whiteBg"    # Z
    .param p3, "forceReload"    # Z

    .prologue
    const/4 v4, 0x1

    .line 77
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    if-eqz p3, :cond_2

    .line 80
    invoke-static {p0, p2, v4}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;ZZ)V

    .line 85
    :goto_1
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/view/IconView;->setTextColor(I)V

    .line 86
    sget v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    const/4 v1, 0x0

    sget v2, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    sget v3, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    .line 88
    if-eqz p3, :cond_0

    .line 89
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0, v4}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 82
    :cond_2
    const/4 p3, 0x0

    goto :goto_1
.end method

.method public static isWhiteBg()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    return v0
.end method

.method public static isWhiteNavigationBar()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeNavigationBarForWhiteBg:Z

    return v0
.end method

.method public static isWhiteStatusBar()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeStatusBarForWhiteBg:Z

    return v0
.end method

.method public static setup(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "need_dark_font"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    .line 60
    const-string v0, "WhiteBgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sChangeForWhiteBg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->setup(Landroid/content/Context;ZZ)V

    .line 62
    sget-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeForWhiteBg:Z

    invoke-static {p0, v0}, Lcom/android/launcher3/util/WhiteBgManager$AttribImage;->setup(Landroid/content/Context;Z)V

    .line 63
    return-void
.end method

.method public static setupForNavigationBar(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_dark_navigationbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeNavigationBarForWhiteBg:Z

    .line 73
    return-void
.end method

.method public static setupForStatusBar(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "need_dark_statusbar"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/WhiteBgManager;->sChangeStatusBarForWhiteBg:Z

    .line 68
    return-void
.end method
