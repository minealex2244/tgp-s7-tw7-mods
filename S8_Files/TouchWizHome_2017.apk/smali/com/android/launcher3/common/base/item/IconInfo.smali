.class public Lcom/android/launcher3/common/base/item/IconInfo;
.super Lcom/android/launcher3/common/base/item/ItemInfo;
.source "IconInfo.java"


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DOWNLOADED_FLAG:I = 0x1

.field public static final FLAG_AUTOINTALL_ICON:I = 0x2

.field public static final FLAG_DISABLED_EXTERNAL_STORAGE:I = 0x20

.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_QUIET_USER:I = 0x8

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field public static final FLAG_DISABLED_SUSPENDED:I = 0x4

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x8

.field public static final FLAG_OMC_RESTORED_ICON:I = 0x20

.field public static final FLAG_RESTORED_ICON:I = 0x1

.field public static final FLAG_RESTORE_STARTED:I = 0x10

.field public static final FLAG_SCLOUD_RESTORED_ICON:I = 0x4

.field public static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field public customIcon:Z

.field public firstInstallTime:J

.field public flags:I

.field public iconResource:Landroid/content/Intent$ShortcutIconResource;

.field public intent:Landroid/content/Intent;

.field public isAppsButton:Z

.field public isDisabled:I

.field public mIcon:Landroid/graphics/Bitmap;

.field private mInstallProgress:I

.field private mOriginalIcon:Landroid/graphics/Bitmap;

.field public promisedIntent:Landroid/content/Intent;

.field public status:I

.field public usingFallbackIcon:Z

.field public usingLowResIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 148
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 165
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 171
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 182
    return-void
.end method

.method public constructor <init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "cmp"    # Landroid/content/ComponentName;
    .param p4, "container"    # J
    .param p6, "screenRank"    # J
    .param p8, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    const/4 v0, 0x0

    .line 252
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 148
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 165
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 171
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 253
    iput-wide p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 254
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 255
    iput-wide p4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 256
    iput-wide p6, p0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 257
    iput-object p8, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 260
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 261
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 148
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 165
    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 171
    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 196
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 197
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 198
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 201
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p2, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 203
    :cond_0
    iget-boolean v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 204
    iget v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 205
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 206
    iget-object v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 207
    iget v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 208
    iget v0, p2, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 148
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 165
    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 171
    iput-boolean v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 235
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 236
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 238
    invoke-static {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 239
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 240
    invoke-virtual {p4, p2}, Lcom/android/launcher3/common/model/IconCache;->getPackageItemTitle(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 242
    .local v0, "title":Ljava/lang/CharSequence;
    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 244
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 248
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 249
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p4, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p5, "quietModeEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/ItemInfo;-><init>()V

    .line 148
    iput v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 165
    iput v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 171
    iput-boolean v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    .line 216
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 217
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 219
    invoke-static {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 220
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 221
    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 224
    :cond_0
    if-eqz p5, :cond_1

    .line 225
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 228
    :cond_1
    invoke-virtual {p4, p0, p2, v2}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Z)V

    .line 229
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 230
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "contentDescription"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/Bitmap;
    .param p5, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 188
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 189
    iput-object p3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 190
    iput-object p4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 191
    iput-object p5, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 192
    return-void
.end method

.method public static dumpIconInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 455
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 457
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   title=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " customIcon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 460
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_0
    return-void
.end method

.method public static fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6
    .param p0, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 363
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 364
    .local v0, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 365
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    .line 366
    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getCSCPackageItemText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 367
    .local v1, "title":Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    .line 370
    :cond_0
    invoke-static {v1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 371
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 372
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 373
    iput-boolean v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 375
    iput v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    .line 376
    invoke-static {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 377
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->firstInstallTime:J

    .line 378
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 379
    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 381
    :cond_1
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 382
    iget v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 384
    :cond_2
    return-object v0
.end method

.method private static getCSCPackageItemText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 435
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 436
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->semGetCscPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 440
    :cond_0
    return-object v1
.end method

.method public static initFlags(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)I
    .locals 3
    .param p0, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 422
    .local v0, "appFlags":I
    const/4 v1, 0x0

    .line 423
    .local v1, "flags":I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_0

    .line 424
    or-int/lit8 v1, v1, 0x1

    .line 426
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    .line 427
    or-int/lit8 v1, v1, 0x2

    .line 430
    :cond_0
    return v1
.end method

.method public static makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;
    .locals 3
    .param p0, "cn"    # Landroid/content/ComponentName;
    .param p1, "serialNumber"    # J

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 415
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10200000

    .line 416
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "profile"

    .line 417
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 408
    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 409
    .local v0, "serialNumber":J
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getInstallProgress()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mInstallProgress:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOriginalIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0
.end method

.method public hasStatusFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 344
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isPromise()Z
    .locals 1

    .prologue
    .line 349
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 388
    new-instance v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v0}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    .line 389
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/common/base/item/IconInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    .line 390
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_0
    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    .line 393
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 394
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 395
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->flags:I

    .line 396
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    new-instance v2, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :cond_0
    iput-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    .line 397
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    .line 398
    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    .line 399
    return-object v0

    :cond_1
    move-object v1, v2

    .line 392
    goto :goto_0
.end method

.method public onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 307
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 309
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "titleStr":Ljava/lang/String;
    :goto_0
    const-string v3, "title"

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "uri":Ljava/lang/String;
    :goto_1
    const-string v3, "intent"

    invoke-virtual {p2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v3, "restored"

    iget v4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-nez v3, :cond_4

    .line 317
    const-string v3, "iconType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    :goto_2
    iget-boolean v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->customIcon:Z

    if-eqz v3, :cond_6

    .line 325
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 326
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    .line 333
    :cond_0
    :goto_3
    return-void

    .end local v0    # "titleStr":Ljava/lang/String;
    .end local v1    # "uri":Ljava/lang/String;
    :cond_1
    move-object v0, v2

    .line 309
    goto :goto_0

    .line 312
    .restart local v0    # "titleStr":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1

    .line 319
    .restart local v1    # "uri":Ljava/lang/String;
    :cond_4
    const-string v3, "iconType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 320
    const-string v3, "iconPackage"

    iget-object v4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v3, "iconResource"

    iget-object v4, p0, Lcom/android/launcher3/common/base/item/IconInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v4, v4, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {p2, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 330
    :cond_6
    iget v3, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v3, :cond_0

    .line 331
    const-string v3, "icon"

    check-cast v2, [B

    invoke-virtual {p2, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_3
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 266
    return-void
.end method

.method public setInstallProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mInstallProgress:I

    .line 359
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->status:I

    .line 360
    return-void
.end method

.method public setOriginalIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->mOriginalIcon:Landroid/graphics/Bitmap;

    .line 277
    return-void
.end method

.method public shouldUseLowResIcon()Z
    .locals 4

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toComponentKey()Lcom/android/launcher3/util/ComponentKey;
    .locals 3

    .prologue
    .line 403
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IconInfo(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rank="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->dropPos:[I

    .line 448
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateIcon(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->shouldUseLowResIcon()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/base/item/IconInfo;->updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V

    .line 289
    return-void
.end method

.method public updateIcon(Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 2
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p2, "useLowRes"    # Z

    .prologue
    .line 292
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p1, p0, v0, v1, p2}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 296
    :cond_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public updateTitleAndIcon(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 3
    .param p1, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 299
    iget v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->promisedIntent:Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/common/base/item/IconInfo;->shouldUseLowResIcon()Z

    move-result v2

    .line 300
    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/android/launcher3/common/model/IconCache;->getTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)V

    .line 303
    :cond_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    goto :goto_0
.end method
