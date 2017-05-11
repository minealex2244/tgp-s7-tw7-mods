.class public Lcom/android/launcher3/home/AppsButtonSettingsActivity;
.super Landroid/app/Activity;
.source "AppsButtonSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static final ACTION_CHANGE_APPS_BUTTON_BIXBY:Ljava/lang/String; = "showApps"

.field public static final EXTRA_SHOW_APPS:Ljava/lang/String; = "showApps"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApplyButton:Landroid/widget/TextView;

.field private mAppsIcon:Landroid/widget/ImageView;

.field private mEnabledAppsButton:Z

.field private mHelpText:Landroid/widget/TextView;

.field private mHideAppsRadio:Landroid/widget/RadioButton;

.field private mLastIcon:Landroid/widget/ImageView;

.field private mPreview:Landroid/widget/LinearLayout;

.field private mShowAppsRadio:Landroid/widget/RadioButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addIconsToPreview(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v6, -0x2

    .line 178
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_1

    .line 179
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 180
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "icon":Landroid/widget/ImageView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 184
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v5, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 187
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getAllAppsIcon()V

    .line 188
    iget-boolean v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-eqz v4, :cond_2

    .line 189
    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 198
    :cond_1
    :goto_1
    return-void

    .line 191
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 192
    .local v2, "maxCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 193
    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    .line 194
    iget-object v4, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHelpText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private changeAppsButtonEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 406
    iget-boolean v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-ne v1, p1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 409
    :cond_0
    sget-object v1, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppsButtonEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Settings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "set_boolean_setting"

    const-string v4, "pref_apps_button_setting"

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 415
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080177

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0800db

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_1

    const-string v1, "1"

    .line 415
    :goto_1
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080196

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 419
    :goto_2
    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    goto :goto_0

    .line 417
    :cond_1
    const-string v1, "2"

    goto :goto_1

    .line 420
    :cond_2
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private drawFolderPreview(Ljava/util/ArrayList;I)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "drawables"    # Ljava/util/ArrayList;
    .param p2, "folderColor"    # I

    .prologue
    .line 344
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-object/from16 v20, v0

    .line 345
    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v10

    .line 347
    .local v10, "iconSize":I
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/theme/OpenThemeManager;->getFolderStyle()Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;

    move-result-object v8

    .line 348
    .local v8, "fs":Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;
    if-eqz v8, :cond_0

    .line 349
    move/from16 v0, p2

    invoke-virtual {v8, v0}, Lcom/android/launcher3/theme/OpenThemeManager$FolderStyle;->getCloseFolderImage(I)Landroid/graphics/Bitmap;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v10, v10, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 355
    .local v7, "folderIcon":Landroid/graphics/Bitmap;
    :goto_0
    new-instance v17, Landroid/graphics/Canvas;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 357
    .local v17, "previewCanvas":Landroid/graphics/Canvas;
    const/4 v13, 0x3

    .line 358
    .local v13, "miniIconCol":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900c7

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    .line 359
    .local v14, "miniIconGap":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0900c8

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 360
    .local v18, "previewPadding":I
    mul-int/lit8 v20, v18, 0x2

    sub-int v3, v10, v20

    .line 361
    .local v3, "availableSpaceInPreview":I
    mul-int/lit8 v20, v14, 0x2

    sub-int v20, v3, v20

    div-int v5, v20, v13

    .line 363
    .local v5, "baselineIconSize":I
    int-to-float v0, v5

    move/from16 v20, v0

    int-to-float v0, v10

    move/from16 v21, v0

    div-float v4, v20, v21

    .line 367
    .local v4, "baselineIconScale":F
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v12, "mOldBounds":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v9, v20, -0x1

    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_2

    .line 371
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 372
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    sget-boolean v20, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v20, :cond_1

    rem-int v20, v9, v13

    rsub-int/lit8 v15, v20, 0x2

    .line 373
    .local v15, "posX":I
    :goto_2
    div-int v16, v9, v13

    .line 374
    .local v16, "posY":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->save()I

    .line 375
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 376
    add-int v20, v5, v14

    mul-int v20, v20, v15

    add-int v11, v20, v18

    .line 377
    .local v11, "l":I
    add-int v20, v5, v14

    mul-int v20, v20, v16

    add-int v19, v20, v18

    .line 378
    .local v19, "t":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v4

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v20, v20, v11

    .line 379
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v21, v21, v19

    .line 378
    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v11, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 380
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 381
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 382
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Canvas;->restore()V

    .line 370
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 352
    .end local v3    # "availableSpaceInPreview":I
    .end local v4    # "baselineIconScale":F
    .end local v5    # "baselineIconSize":I
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "folderIcon":Landroid/graphics/Bitmap;
    .end local v9    # "i":I
    .end local v11    # "l":I
    .end local v12    # "mOldBounds":Landroid/graphics/Rect;
    .end local v13    # "miniIconCol":I
    .end local v14    # "miniIconGap":I
    .end local v15    # "posX":I
    .end local v16    # "posY":I
    .end local v17    # "previewCanvas":Landroid/graphics/Canvas;
    .end local v18    # "previewPadding":I
    .end local v19    # "t":I
    :cond_0
    const v20, 0x7f02009c

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v10, v10}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7    # "folderIcon":Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 372
    .restart local v3    # "availableSpaceInPreview":I
    .restart local v4    # "baselineIconScale":F
    .restart local v5    # "baselineIconSize":I
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "i":I
    .restart local v12    # "mOldBounds":Landroid/graphics/Rect;
    .restart local v13    # "miniIconCol":I
    .restart local v14    # "miniIconGap":I
    .restart local v17    # "previewCanvas":Landroid/graphics/Canvas;
    .restart local v18    # "previewPadding":I
    :cond_1
    rem-int v15, v9, v13

    goto :goto_2

    .line 384
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v7
.end method

.method private getAllAppsIcon()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    .line 388
    new-instance v7, Landroid/widget/ImageView;

    invoke-direct {v7, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    .line 390
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    .local v4, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 393
    iget-object v7, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v6

    .line 395
    .local v6, "themeManager":Lcom/android/launcher3/theme/OpenThemeManager;
    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/theme/OpenThemeManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 396
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09009f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 397
    .local v5, "size":I
    invoke-static {v2, v5, v5}, Lcom/android/launcher3/util/BitmapUtils;->getBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 398
    .local v0, "appsButtonBitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->ALL_APPS_ICON:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    .line 399
    invoke-virtual {v7}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v7

    const-string v8, "drawable"

    .line 398
    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/theme/OpenThemeManager;->isFromThemeResources(ILjava/lang/String;)Z

    move-result v3

    .line 400
    .local v3, "isThemeAppIcon":Z
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v7

    invoke-virtual {v7, v0, v5, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 402
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    return-void
.end method

.method private getHotseatFolderIconFromDb(JI)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "folderId"    # J
    .param p3, "folderColor"    # I

    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rank"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "< 9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    .local v5, "where":Ljava/lang/String;
    const-string v7, "rank"

    .line 259
    .local v7, "sortOrder":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "itemType"

    aput-object v3, v4, v2

    .line 263
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 265
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v12, "folderItemDawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    .line 267
    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v14

    .line 268
    .local v14, "iconSize":I
    if-eqz v9, :cond_1

    .line 269
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v13

    .line 270
    .local v13, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v15

    .line 273
    .local v15, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v15}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIconBitmap(Landroid/database/Cursor;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 276
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    .line 277
    invoke-static {v8, v14, v14, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v10, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 278
    .local v10, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v11

    .line 286
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 289
    .end local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v15    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->drawFolderPreview(Ljava/util/ArrayList;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 283
    .restart local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .restart local v15    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_1
    move-exception v11

    .line 284
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 286
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getHotseatIconFromDb()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v14, "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "icon"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "itemType"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "color"

    aput-object v3, v4, v2

    .line 207
    .local v4, "projection":[Ljava/lang/String;
    const-string v5, "container=-101"

    .line 209
    .local v5, "where":Ljava/lang/String;
    const-string v7, "screen"

    .line 210
    .local v7, "sortOrder":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 212
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    .line 214
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v13

    .line 215
    .local v13, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    .line 216
    .local v19, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 218
    .local v20, "previewIconSize":I
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 219
    .local v17, "intentIndex":I
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 222
    .local v16, "idIndex":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 224
    :try_start_1
    move/from16 v0, v17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 225
    .local v18, "intentString":Ljava/lang/String;
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 228
    .local v15, "id":Ljava/lang/Long;
    if-nez v18, :cond_2

    .line 229
    const-string v2, "color"

    .line 230
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 231
    .local v9, "colorIndex":I
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v10, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getHotseatFolderIconFromDb(JI)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 236
    .end local v9    # "colorIndex":I
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    if-eqz v8, :cond_0

    .line 237
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-static {v8, v0, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v11, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 239
    .local v11, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 241
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "d":Landroid/graphics/drawable/Drawable;
    .end local v15    # "id":Ljava/lang/Long;
    .end local v18    # "intentString":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 249
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    .end local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v14    # "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .end local v16    # "idIndex":I
    .end local v17    # "intentIndex":I
    .end local v19    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v20    # "previewIconSize":I
    :goto_2
    return-object v14

    .line 233
    .restart local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .restart local v14    # "iconDrawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    .restart local v15    # "id":Ljava/lang/Long;
    .restart local v16    # "idIndex":I
    .restart local v17    # "intentIndex":I
    .restart local v18    # "intentString":Ljava/lang/String;
    .restart local v19    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v20    # "previewIconSize":I
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v10, v13, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIconBitmap(Landroid/database/Cursor;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .restart local v8    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 246
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v13    # "iconCache":Lcom/android/launcher3/common/model/IconCache;
    .end local v15    # "id":Ljava/lang/Long;
    .end local v16    # "idIndex":I
    .end local v17    # "intentIndex":I
    .end local v18    # "intentString":Ljava/lang/String;
    .end local v19    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v20    # "previewIconSize":I
    :catch_1
    move-exception v12

    .line 247
    .local v12, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 252
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 249
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private getIconBitmap(Landroid/database/Cursor;Lcom/android/launcher3/common/model/IconCache;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "iconCache"    # Lcom/android/launcher3/common/model/IconCache;
    .param p3, "myUserHandle"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    const-string v12, "intent"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 297
    .local v6, "intentIndex":I
    const-string v12, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 298
    .local v4, "iconIndex":I
    const-string v12, "itemType"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 299
    .local v11, "typeIndex":I
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 300
    .local v10, "type":I
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 301
    .local v7, "intentString":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v7, v12}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    .line 302
    .local v5, "intent":Landroid/content/Intent;
    const/4 v12, 0x1

    if-ne v10, v12, :cond_5

    .line 303
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 304
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 305
    const/4 v12, 0x0

    .line 340
    .end local v4    # "iconIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentIndex":I
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "typeIndex":I
    :goto_0
    return-object v12

    .line 307
    .restart local v4    # "iconIndex":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intentIndex":I
    .restart local v7    # "intentString":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "typeIndex":I
    :cond_0
    move-object/from16 v0, p1

    invoke-static {v0, v4, p0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 308
    if-nez v2, :cond_3

    .line 309
    invoke-virtual/range {p2 .. p3}, Lcom/android/launcher3/common/model/IconCache;->getDefaultIcon(Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 324
    :goto_1
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 325
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 326
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 327
    .local v8, "packageName":Ljava/lang/String;
    :goto_2
    invoke-static {v8}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 328
    move-object/from16 v0, p3

    invoke-static {p0, v8, v0}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 330
    :cond_1
    invoke-static {v5}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 331
    const-string v12, "liveicon_cmpname"

    .line 332
    invoke-virtual {v5, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "/"

    .line 333
    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v9, v12, v13

    .line 334
    .local v9, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-static {p0, v9, v0}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    .end local v4    # "iconIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentIndex":I
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "typeIndex":I
    :cond_2
    :goto_3
    move-object v12, v2

    .line 340
    goto :goto_0

    .line 311
    .restart local v4    # "iconIndex":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "intentIndex":I
    .restart local v7    # "intentString":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v11    # "typeIndex":I
    :cond_3
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-static {p0, v2, v12}, Lcom/android/launcher3/util/ShortcutTray;->getIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/ComponentName;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 312
    invoke-static {p0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 313
    invoke-static/range {p3 .. p3}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 314
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 315
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 314
    invoke-static {p0, v2, v12, v13}, Lcom/android/launcher3/util/DualAppUtils;->makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 317
    :cond_4
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v12

    .line 318
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    const/4 v14, 0x0

    .line 317
    invoke-virtual {v12, v2, v13, v14}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_1

    .line 321
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v5, v1}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 326
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 337
    .end local v4    # "iconIndex":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "intentIndex":I
    .end local v7    # "intentString":Ljava/lang/String;
    .end local v10    # "type":I
    .end local v11    # "typeIndex":I
    :catch_0
    move-exception v3

    .line 338
    .local v3, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private initActionBar()V
    .locals 4

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 147
    .local v1, "mActionBar":Landroid/app/ActionBar;
    if-eqz v1, :cond_0

    .line 148
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 149
    const v2, 0x7f03001f

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 150
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0f0059

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    .line 152
    iget-object v2, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v2, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    const v2, 0x7f0f0058

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 156
    .local v0, "headerBar":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    .end local v0    # "headerBar":Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 131
    const v0, 0x7f0f001d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    .line 132
    const v0, 0x7f0f001e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHelpText:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0f001a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    .line 134
    const v0, 0x7f0f001c

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHideAppsRadio:Landroid/widget/RadioButton;

    .line 135
    iget-boolean v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 140
    :goto_0
    const v0, 0x7f0f0019

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f0f001b

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 143
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHideAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private preformOnClick(Z)V
    .locals 4
    .param p1, "showApps"    # Z

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mShowAppsRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 125
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080177

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08015e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08011e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updatePreview(Z)V
    .locals 2
    .param p1, "isShowAppsChecked"    # Z

    .prologue
    .line 162
    if-eqz p1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    :cond_1
    :goto_1
    return-void

    .line 163
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mApplyButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mAppsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mPreview:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mLastIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mHideAppsRadio:Landroid/widget/RadioButton;

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    invoke-direct {p0, p2}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->updatePreview(Z)V

    .line 121
    return-void

    .line 119
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 99
    :sswitch_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    goto :goto_0

    .line 105
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    if-nez v2, :cond_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->changeAppsButtonEnabled(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 105
    goto :goto_1

    .line 109
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 112
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->preformOnClick(Z)V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x7f0f0013 -> :sswitch_0
        0x7f0f0019 -> :sswitch_2
        0x7f0f001b -> :sswitch_3
        0x7f0f0059 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    sget-object v0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAppsButtonEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->mEnabledAppsButton:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "showApps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showApps"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->changeAppsButtonEnabled(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->finish()V

    .line 89
    :cond_0
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->initViews()V

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->initActionBar()V

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->getHotseatIconFromDb()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/AppsButtonSettingsActivity;->addIconsToPreview(Ljava/util/ArrayList;)V

    .line 93
    return-void
.end method
