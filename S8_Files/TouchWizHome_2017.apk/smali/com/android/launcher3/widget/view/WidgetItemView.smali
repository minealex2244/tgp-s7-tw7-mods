.class public abstract Lcom/android/launcher3/widget/view/WidgetItemView;
.super Landroid/widget/LinearLayout;
.source "WidgetItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;,
        Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;
    }
.end annotation


# instance fields
.field protected mDimensionsFormatString:Ljava/lang/String;

.field private mHighlightColor:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mLoadTask:Lcom/android/launcher3/util/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

.field protected mTalkbackDimen:Ljava/lang/String;

.field private final mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

.field protected mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

.field protected mUninstallExitIconAnimation:Landroid/view/animation/Animation;

.field protected mUninstallIcon:Landroid/widget/ImageView;

.field protected mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f040009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    .line 87
    const v1, 0x7f040008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    .line 88
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 103
    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mDimensionsFormatString:Ljava/lang/String;

    .line 104
    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mTalkbackDimen:Ljava/lang/String;

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setHapticFeedbackEnabled(Z)V

    .line 106
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setWillNotDraw(Z)V

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setClipToPadding(Z)V

    .line 110
    const v1, 0x7f0d0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    .line 112
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    .line 113
    check-cast p1, Lcom/android/launcher3/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 114
    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    .line 115
    return-void
.end method


# virtual methods
.method protected applyCellSpan()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public applyHighlightTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "highlight"    # Ljava/lang/String;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    .line 215
    .local v4, "name":Landroid/widget/TextView;
    const/4 v3, -0x1

    .line 216
    .local v3, "indexOf":I
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 219
    .local v1, "highlightStrLength":I
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 220
    .local v0, "highLightText":Landroid/text/Spannable;
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, p1, v7}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    .line 221
    .local v2, "iQueryForIndian":[C
    if-eqz v2, :cond_1

    .line 222
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    .line 223
    .local v5, "s":Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 224
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 228
    .end local v5    # "s":Ljava/lang/String;
    :goto_0
    const/4 v6, -0x1

    if-le v3, v6, :cond_0

    .line 229
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v3, v1

    const/4 v8, 0x0

    invoke-interface {v0, v6, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 230
    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    return-void

    .line 226
    :cond_1
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method protected final applyTileAndSpan(Ljava/lang/String;)V
    .locals 5
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 164
    .local v1, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    instance-of v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    .line 165
    .local v0, "folder":Z
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "title":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyTitle(Ljava/lang/String;)V

    .line 167
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyHighlightTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyCellSpan()V

    .line 172
    return-void

    .line 165
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract applyTitle(Ljava/lang/String;)V
.end method

.method public changeColorForBg(Z)V
    .locals 0
    .param p1, "whiteBg"    # Z

    .prologue
    .line 332
    return-void
.end method

.method public changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "anim"    # Z

    .prologue
    .line 324
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->exitUninstallMode(Z)V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->enterUninstallMode(Z)V

    goto :goto_0
.end method

.method public enterUninstallMode(Z)V
    .locals 7
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 130
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 131
    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 132
    .local v0, "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    .line 133
    .local v2, "uninstallable":Z
    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTalkbackDescription(ZZ)V

    .line 134
    if-eqz v2, :cond_0

    .line 135
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const-string v6, "\u00a0"

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallEnterAnimation()V

    .line 141
    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetItemView;->prepareUninstallEnter(Z)V

    .line 143
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v2    # "uninstallable":Z
    :cond_1
    return-void

    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .restart local v2    # "uninstallable":Z
    :cond_2
    move v3, v5

    .line 133
    goto :goto_0

    :cond_3
    move v4, v5

    .line 141
    goto :goto_1
.end method

.method public exitUninstallMode(Z)V
    .locals 6
    .param p1, "animate"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 147
    .local v1, "obj":Ljava/lang/Object;
    instance-of v3, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 148
    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 149
    .local v0, "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    .line 150
    .local v2, "uninstallable":Z
    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTalkbackDescription(ZZ)V

    .line 151
    if-eqz v2, :cond_0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallExitAnimation()V

    .line 156
    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetItemView;->prepareUninstallExit(Z)V

    .line 157
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 160
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .end local v2    # "uninstallable":Z
    :cond_1
    return-void

    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    .restart local v2    # "uninstallable":Z
    :cond_2
    move v3, v5

    .line 150
    goto :goto_0

    :cond_3
    move v4, v5

    .line 156
    goto :goto_1
.end method

.method protected abstract getPreviewImageHeight()I
.end method

.method protected abstract getPreviewImageWidth()I
.end method

.method protected abstract getTitleTextView()Landroid/widget/TextView;
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 235
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 236
    .local v0, "ret":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 237
    return-object v0
.end method

.method protected abstract loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;II)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 250
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract postToSetPreview(Ljava/lang/Object;II)V
.end method

.method protected prepareUninstallEnter(Z)V
    .locals 0
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 181
    return-void
.end method

.method protected prepareUninstallExit(Z)V
    .locals 0
    .param p1, "isSystemApp"    # Z

    .prologue
    .line 184
    return-void
.end method

.method public requestPreview(Lcom/android/launcher3/widget/view/WidgetPageLayout;)V
    .locals 5
    .param p1, "layout"    # Lcom/android/launcher3/widget/view/WidgetPageLayout;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageHeight()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;Ljava/util/List;II)V

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageHeight()I

    move-result v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;Lcom/android/launcher3/widget/view/WidgetPageLayout;II)V

    .line 270
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    .line 272
    return-void
.end method

.method protected resetToRecycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 254
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    .line 256
    iput-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    .line 258
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setNextFocusLeftId(I)V

    .line 259
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setNextFocusRightId(I)V

    .line 260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->exitUninstallMode(Z)V

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTag(Ljava/lang/Object;)V

    .line 262
    return-void
.end method

.method protected setTalkbackDescription(ZZ)V
    .locals 5
    .param p1, "isUninstall"    # Z
    .param p2, "isSystemApp"    # Z

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 120
    .local v0, "name":Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "nameDescription":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 126
    .end local v1    # "nameDescription":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    return-void
.end method

.method protected startUninstallEnterAnimation()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected startUninstallExitAnimation()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    :cond_0
    return-void
.end method

.method protected supportLongClick()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x1

    return v0
.end method

.method protected uninstallExitIconAnimationEnd()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    :cond_0
    return-void
.end method
