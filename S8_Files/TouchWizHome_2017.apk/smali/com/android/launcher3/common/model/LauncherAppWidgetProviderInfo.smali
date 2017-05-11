.class public Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "LauncherAppWidgetProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final TAG:Ljava/lang/String; = "LauncherAWProviderInfo"


# instance fields
.field public isCustomWidget:Z

.field private mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

.field private mMinSpanX:I

.field private mMinSpanY:I

.field private mSpanX:I

.field private mSpanY:I

.field private mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

.field private mTempMinResizeHeight:I

.field private mTempMinResizeWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 65
    iput-boolean v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 73
    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mTempMinResizeWidth:I

    .line 74
    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mTempMinResizeHeight:I

    .line 107
    move-object v2, p0

    .line 110
    .local v2, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 111
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 116
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 117
    .local v3, "metaData":Landroid/os/Bundle;
    const-string v5, "com.google.android.gsa.searchwidget.alt_initial_layout_cqsb"

    const/4 v6, -0x1

    .line 118
    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 119
    .local v4, "resId":I
    if-eq v4, v8, :cond_0

    .line 120
    const-string v5, "LauncherAWProviderInfo"

    const-string v6, "GSA replace initialLayout. "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iput v4, v2, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "metaData":Landroid/os/Bundle;
    .end local v4    # "resId":I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->calculateSpans()V

    .line 129
    return-void

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "LauncherAWProviderInfo"

    const-string v6, "Fail to replace GSA initialLayout."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private calculateSpans()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 132
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 133
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    .line 135
    .local v1, "dp":Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    if-eqz v1, :cond_0

    iget-object v9, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->needToUpdateSpans(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_0
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mTempMinResizeWidth:I

    iget v10, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    if-eq v9, v10, :cond_1

    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mTempMinResizeHeight:I

    iget v10, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    if-ne v9, v10, :cond_3

    .line 138
    :cond_1
    if-nez v1, :cond_2

    .line 139
    const-string v9, "LauncherAWProviderInfo"

    const-string v10, "ignore calculate spans because DeviceProfile is null"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2
    :goto_0
    return-void

    .line 144
    :cond_3
    iget-object v9, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    iput-object v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 146
    invoke-static {}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->getPaddingForWidget()Landroid/graphics/Rect;

    move-result-object v7

    .line 147
    .local v7, "widgetPadding":Landroid/graphics/Rect;
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minWidth:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/graphics/Rect;->right:I

    add-int v8, v9, v10

    .line 148
    .local v8, "width":I
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minHeight:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    add-int v2, v9, v10

    .line 149
    .local v2, "height":I
    invoke-direct {p0, v8, v2, v1, v11}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpan(IILcom/android/launcher3/common/deviceprofile/DeviceProfile;Z)[I

    move-result-object v6

    .line 150
    .local v6, "spanXY":[I
    aget v9, v6, v11

    iput v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSpanX:I

    .line 151
    aget v9, v6, v12

    iput v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSpanY:I

    .line 153
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/graphics/Rect;->right:I

    add-int v5, v9, v10

    .line 154
    .local v5, "resizeWidth":I
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iget v10, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    add-int v4, v9, v10

    .line 155
    .local v4, "resizeHeight":I
    invoke-direct {p0, v5, v4, v1, v12}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpan(IILcom/android/launcher3/common/deviceprofile/DeviceProfile;Z)[I

    move-result-object v3

    .line 156
    .local v3, "minSpanXY":[I
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iput v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mTempMinResizeWidth:I

    .line 157
    iget v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iput v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mTempMinResizeHeight:I

    .line 158
    aget v9, v3, v11

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    .line 159
    aget v9, v3, v12

    invoke-static {v12, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    .line 161
    iget-object v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    if-nez v9, :cond_4

    .line 162
    new-instance v9, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;-><init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;)V

    iput-object v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    .line 163
    iget-object v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->parseSupportSpans()V
    invoke-static {v9}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$100(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)V

    .line 165
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    iget v10, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSpanX:I

    iget v11, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSpanY:I

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->updateSpanAndResizeMode(IIZ)V
    invoke-static {v9, v10, v11, v12}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$200(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;IIZ)V

    goto :goto_0
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 97
    .local v1, "p":Landroid/os/Parcel;
    invoke-virtual {p1, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    new-instance v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 100
    .local v0, "lawpi":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 101
    return-object v0
.end method

.method private getSpan(IILcom/android/launcher3/common/deviceprofile/DeviceProfile;Z)[I
    .locals 8
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "dp"    # Lcom/android/launcher3/common/deviceprofile/DeviceProfile;
    .param p4, "resize"    # Z

    .prologue
    const/4 v7, 0x0

    .line 264
    iget v5, p3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellWidth:I

    iget v6, p3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellHeight:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 265
    .local v2, "smallsize":I
    invoke-direct {p0, p1, v2, v7}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanCount(III)I

    move-result v3

    .line 266
    .local v3, "spanX":I
    invoke-direct {p0, p2, v2, v7}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanCount(III)I

    move-result v4

    .line 267
    .local v4, "spanY":I
    if-eqz p4, :cond_0

    iget v0, p3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellCountX:I

    .line 268
    .local v0, "baseSpanX":I
    :goto_0
    if-eqz p4, :cond_1

    iget v1, p3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->gedHomeCellCountY:I

    .line 269
    .local v1, "baseSpanY":I
    :goto_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    .line 270
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v5, v7

    const/4 v6, 0x1

    .line 271
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    aput v7, v5, v6

    return-object v5

    .line 267
    .end local v0    # "baseSpanX":I
    .end local v1    # "baseSpanY":I
    :cond_0
    iget-object v5, p3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    goto :goto_0

    .line 268
    .restart local v0    # "baseSpanX":I
    :cond_1
    iget-object v5, p3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    goto :goto_1
.end method

.method private getSpanCount(III)I
    .locals 4
    .param p1, "targetSize"    # I
    .param p2, "cellSize"    # I
    .param p3, "cellGap"    # I

    .prologue
    .line 284
    add-int v1, p1, p3

    .line 285
    .local v1, "numerator":I
    add-int v0, p2, p3

    .line 286
    .local v0, "denominator":I
    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 287
    .local v2, "spanCount":I
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cache"    # Lcom/android/launcher3/common/model/IconCache;

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/IconCache;->getIconDpi()I

    move-result v0

    .line 180
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMinSpanX()I
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->calculateSpans()V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportSpanCount()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$300(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getMinXSpan()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$400(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    goto :goto_0
.end method

.method public getMinSpanY()I
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->calculateSpans()V

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportSpanCount()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$300(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getMinYSpan()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$500(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    goto :goto_0
.end method

.method public getMinSpans()Landroid/graphics/Point;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 193
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->calculateSpans()V

    .line 194
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode()I

    move-result v0

    .line 195
    .local v0, "mode":I
    new-instance v3, Landroid/graphics/Point;

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanX()I

    move-result v2

    :goto_0
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpanY()I

    move-result v1

    :cond_0
    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v3

    :cond_1
    move v2, v1

    .line 196
    goto :goto_0
.end method

.method public getNearestHeight(I)I
    .locals 1
    .param p1, "h"    # I

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getNearestHeight(I)I
    invoke-static {v0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$800(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;I)I

    move-result v0

    return v0
.end method

.method public getNearestWidth(I)I
    .locals 1
    .param p1, "w"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getNearestWidth(I)I
    invoke-static {v0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$700(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;I)I

    move-result v0

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->calculateSpans()V

    .line 202
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSpanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->calculateSpans()V

    .line 207
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSpanY:I

    return v0
.end method

.method public getSupportedSpans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportedSpans()Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$900(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isAvailableSize(II)Z
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportSpanCount()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$300(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->isAvailableSize(II)Z
    invoke-static {v0, p1, p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$1000(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needToUpdateSpans(Lcom/android/launcher3/common/deviceprofile/GridInfo;)Z
    .locals 2
    .param p1, "newGridInfo"    # Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 254
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 256
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mHomeGridInfo:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    .line 257
    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 258
    :cond_0
    const/4 v0, 0x1

    .line 260
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resizeMode()I
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportSpanCount()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$300(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    if-lez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->mSupportCellSpans:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;

    # invokes: Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getResizeMode()I
    invoke-static {v0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->access$600(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I

    move-result v0

    .line 232
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode:I

    goto :goto_0
.end method

.method public toString(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WidgetProviderInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "WidgetProviderInfo provider:%s package:%s short:%s label:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 189
    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 188
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
