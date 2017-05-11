.class Lcom/android/launcher3/util/WhiteBgManager$AttribText;
.super Ljava/lang/Object;
.source "WhiteBgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/WhiteBgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttribText"
.end annotation


# static fields
.field static sColor:I

.field static sDy:F

.field static sRadius:F

.field static sShadowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 136
    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    .line 137
    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    .line 138
    sput v1, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    .line 139
    sput v1, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setup(Landroid/content/Context;ZZ)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteBg"    # Z
    .param p2, "isFollowingTheme"    # Z

    .prologue
    .line 142
    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    .line 145
    const v0, 0x7f0d0030

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    .line 146
    const v0, 0x7f0d002e

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    .line 158
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    .line 150
    if-eqz p2, :cond_1

    .line 151
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    .line 152
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    goto :goto_0

    .line 154
    :cond_1
    const v0, 0x7f0d002f

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    .line 155
    const v0, 0x7f0d002d

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    goto :goto_0
.end method
