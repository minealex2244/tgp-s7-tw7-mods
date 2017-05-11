.class public Lcom/android/launcher3/util/ShortcutTray;
.super Ljava/lang/Object;
.source "ShortcutTray.java"


# static fields
.field private static sIconTrayEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static checkIconTrayEnabled(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tap_to_icon"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/launcher3/util/ShortcutTray;->sIconTrayEnabled:Z

    .line 44
    return-void
.end method

.method private static getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "source"    # Landroid/graphics/drawable/Drawable;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-nez v1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to retrieve PackageManager"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_0
    const/4 v0, 0x0

    .line 69
    .local v0, "localSource":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_1

    .line 70
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->semCheckComponentMetadataForIconTray(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 71
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    :cond_2
    return-object v0
.end method

.method public static getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceIcon"    # Landroid/graphics/Bitmap;
    .param p2, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 47
    sget-boolean v2, Lcom/android/launcher3/util/ShortcutTray;->sIconTrayEnabled:Z

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p2}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v1, p1

    .line 59
    :cond_1
    :goto_0
    return-object v1

    .line 53
    :cond_2
    move-object v1, p1

    .line 54
    .local v1, "returnBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 55
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {p0, v0, p2}, Lcom/android/launcher3/util/ShortcutTray;->getDrawableForIconTray(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-static {v0, p0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static isIconTrayEnabled()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/android/launcher3/util/ShortcutTray;->sIconTrayEnabled:Z

    return v0
.end method
