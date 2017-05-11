.class public Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
.super Lcom/android/launcher3/common/base/view/BaseContainerView;
.source "AppsPickerContainerView.java"

# interfaces
.implements Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
.implements Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAddButtonContainer:Landroid/view/View;

.field private mAddButtonText:Landroid/widget/TextView;

.field private mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

.field private mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mPickerMode:I

.field private mQueryKey:Ljava/lang/String;

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field private mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

.field private mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSelectedCount:I

.field private mSelectedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 95
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 96
    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    .line 99
    invoke-static {p1}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getQueryKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mQueryKey:Ljava/lang/String;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/view/AppsPickerContentView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    return-object v0
.end method

.method private checkHiddenItem()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 214
    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    if-ne v3, v1, :cond_2

    .line 215
    .local v1, "checkAppHiddenStatus":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 216
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 219
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 221
    .local v2, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    iget v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    if-ltz v4, :cond_1

    .line 222
    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_1

    iget-object v4, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 223
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByUser()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 214
    .end local v0    # "appsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .end local v1    # "checkAppHiddenStatus":Z
    .end local v2    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 229
    .restart local v1    # "checkAppHiddenStatus":Z
    :cond_3
    return-void
.end method

.method private debugAppsList()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 425
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Apps.size()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getNumFilteredApps()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", getNumAppRows()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppRows()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 428
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSections()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 430
    .local v0, "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - numApps="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->numApps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sectionBreakItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", firstAppItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->firstAppItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    .end local v0    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    :cond_0
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v4, "getSections() = null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 436
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFastScrollerSections()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 438
    .local v0, "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " - ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] fastScrollToItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v6, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchFraction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 441
    .end local v0    # "info":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    :cond_2
    sget-object v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v4, "getFastScrollerSections() = null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_3
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAdapterItems()="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v2

    if-lez v2, :cond_5

    .line 446
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 447
    .local v1, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    sget-object v4, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v5, " - [%s] viewType=%d, appIndex=%d, position=%d, sectionName=%s, sectionAppIndex=%d, rowIndex=%d, rowAppIndex=%d"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v7, v7, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    aput-object v7, v6, v3

    const/4 v7, 0x1

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 448
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    iget-object v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget v8, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->rowAppIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 447
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 444
    .end local v1    # "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    goto/16 :goto_2

    .line 451
    :cond_5
    return-void
.end method

.method private getBackgroundColorValue(Z)I
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 496
    if-eqz p1, :cond_0

    const v1, 0x7f0d0003

    .line 497
    .local v1, "colorId":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 498
    .local v0, "color":I
    return v0

    .line 496
    .end local v0    # "color":I
    .end local v1    # "colorId":I
    :cond_0
    const v1, 0x7f0d0004

    goto :goto_0
.end method

.method private setSelectionCount()V
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 403
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsToShow()I

    move-result v0

    .line 405
    .local v0, "totalOfApps":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    .line 406
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 413
    iget v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    if-nez v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 418
    :goto_1
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    const-string v2, "%d/%d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 181
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->initAppPositionInfoMap()V

    .line 183
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isWhiteBg()Z

    move-result v1

    .line 185
    .local v1, "isWhiteBg":Z
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-nez v3, :cond_0

    .line 186
    new-instance v3, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .line 187
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    .line 188
    .local v0, "allListView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 189
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V

    .line 191
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    invoke-virtual {v0, v6}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 196
    .end local v0    # "allListView":Landroid/widget/ListView;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-nez v3, :cond_1

    .line 197
    new-instance v3, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-direct {v3, v4, v5, v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;-><init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .line 198
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForSearchApps()Landroid/widget/ListView;

    move-result-object v2

    .line 199
    .local v2, "searchListView":Landroid/widget/ListView;
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 200
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V

    .line 202
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v3

    if-nez v3, :cond_1

    .line 203
    invoke-virtual {v2, v6}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    .line 207
    .end local v2    # "searchListView":Landroid/widget/ListView;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->checkHiddenItem()V

    .line 208
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    .line 209
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setScrollIndexer()V

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->changeColorAndBackground()V

    .line 211
    return-void
.end method

.method public bindController(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/launcher3/appspicker/controller/AppsPickerController;
    .param p2, "apps"    # Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    if-eq v0, p1, :cond_0

    .line 172
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    if-eq v0, p2, :cond_1

    .line 176
    iput-object p2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .line 178
    :cond_1
    return-void
.end method

.method public changeColorAndBackground()V
    .locals 14

    .prologue
    const v13, 0x7f090152

    const/4 v12, 0x0

    .line 459
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsPickerController:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-virtual {v10}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isWhiteBg()Z

    move-result v2

    .line 460
    .local v2, "isBgColor":Z
    invoke-direct {p0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getBackgroundColorValue(Z)I

    move-result v0

    .line 461
    .local v0, "BgColor":I
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v10, :cond_0

    .line 462
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v10, v0, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setContentBgColor(IZ)V

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_1

    .line 465
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 466
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 468
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_button"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 469
    .local v4, "searchButtonId":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_voice_btn"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 470
    .local v9, "voiceButtonId":I
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/search_close_btn"

    invoke-virtual {v10, v11, v12, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 472
    .local v6, "searchCloseId":I
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const v11, 0x7f0f0032

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView;

    .line 473
    .local v7, "searchView":Landroid/widget/SearchView;
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 474
    .local v8, "voiceButton":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 475
    .local v3, "searchButton":Landroid/widget/ImageView;
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v10, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 477
    .local v5, "searchCloseButton":Landroid/widget/ImageView;
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v10, 0x0

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 478
    .local v1, "filter":Landroid/graphics/ColorFilter;
    if-eqz v7, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v10

    if-nez v10, :cond_2

    .line 479
    invoke-virtual {v7}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 480
    invoke-virtual {v7}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 482
    :cond_2
    if-eqz v8, :cond_3

    .line 483
    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 484
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 485
    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 487
    :cond_3
    if-eqz v3, :cond_4

    .line 488
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 490
    :cond_4
    if-eqz v5, :cond_5

    .line 491
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 493
    :cond_5
    return-void
.end method

.method public clearSearchResult()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 361
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_1

    .line 365
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->notifyDataSetChanged()V

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->showAllListView()V

    .line 370
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_2

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 372
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 373
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 376
    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 123
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 126
    .local v2, "unicodeChar":I
    if-lez v2, :cond_1

    .line 127
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 128
    .local v1, "isKeyNotWhitespace":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    .line 130
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 129
    invoke-virtual {v3, p0, v4, v5, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 131
    .local v0, "gotKey":Z
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->focusSearchField()V

    .line 136
    .end local v0    # "gotKey":Z
    .end local v1    # "isKeyNotWhitespace":Z
    .end local v2    # "unicodeChar":I
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    .line 127
    .restart local v2    # "unicodeChar":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemsForHideApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "outItemsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "outItemsToShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    .line 252
    .local v0, "appIconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 253
    .local v1, "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v3, :cond_0

    .line 255
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 258
    :cond_1
    iget v3, v1, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 259
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 264
    .end local v0    # "appIconInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v1    # "iconInfo":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_2
    return-void
.end method

.method public getPickerMode()I
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    return v0
.end method

.method public getSelectedItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newAllAppsSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public notifyAppsListChanged()V
    .locals 2

    .prologue
    .line 298
    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->TAG:Ljava/lang/String;

    const-string v1, "notifyAppsListChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->initAppPositionInfoMap()V

    .line 301
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->notifyDataSetChanged()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->checkHiddenItem()V

    .line 308
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    .line 309
    return-void
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    .line 332
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 141
    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onFinishInflate()V

    .line 143
    new-instance v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$1;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    .line 151
    .local v0, "focusProxyListener":Landroid/view/View$OnFocusChangeListener;
    const v1, 0x7f0f0025

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    .line 152
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 153
    const v1, 0x7f0f0022

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectionText:Landroid/widget/TextView;

    .line 154
    const v1, 0x7f0f0023

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    .line 155
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isEnableBtnBg(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonContainer:Landroid/view/View;

    const v2, 0x7f0200d0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    :cond_0
    const v1, 0x7f0f0024

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    .line 160
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView$2;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v1, 0x7f0f0026

    invoke-virtual {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    iput-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    .line 168
    return-void
.end method

.method public onGalaxyAppsSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    if-eqz p2, :cond_2

    .line 337
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    .line 338
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setSearchText(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->notifyDataSetChanged()V

    .line 343
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 344
    .local v0, "foundApps":I
    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mQueryKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    const/4 v0, -0x1

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setSearchResultText(I)V

    .line 348
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->showSearchListView()V

    .line 351
    .end local v0    # "foundApps":I
    :cond_2
    return-void
.end method

.method public onToggleItem(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/common/base/item/IconInfo;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 277
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelectionCount()V

    .line 278
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "searchBarBounds"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 117
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->onVoiceSearch(Ljava/lang/String;)V

    .line 422
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->reset()V

    .line 287
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 288
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getListViewForAllApps()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 289
    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAllListAdapter:Lcom/android/launcher3/appspicker/AppsPickerListAdapter;

    .line 290
    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchListAdapter:Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->resetMap()V

    .line 292
    iput v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedCount:I

    .line 293
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSelectedItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 295
    return-void
.end method

.method public setAppsPickerViewTop(Z)V
    .locals 1
    .param p1, "appsPickerViewTop"    # Z

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setAppsPickerViewTop(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setParentMode(Z)V
    .locals 1
    .param p1, "home"    # Z

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setParentMode(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public setPickerMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 232
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const v1, 0x7f080038

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 237
    :goto_0
    iput p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mPickerMode:I

    .line 238
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAddButtonText:Landroid/widget/TextView;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public setScrollIndexer()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "appListForIndexer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "&"

    .line 382
    .local v5, "listHeaderIndexer":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v9}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v1

    .line 383
    .local v1, "appsMapSize":I
    if-lez v1, :cond_1

    .line 384
    const-string v7, ""

    .line 385
    .local v7, "sectionName":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 386
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v9, v2}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v6

    .line 387
    .local v6, "rowItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    if-eqz v6, :cond_0

    .line 388
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v3, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 389
    .local v3, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v8, v3, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    .line 390
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v9

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v4, v9, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 392
    .local v4, "lastSection":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v4, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 393
    move-object v7, v4

    .line 394
    invoke-virtual {v5, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 385
    .end local v3    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v4    # "lastSection":Ljava/lang/String;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 399
    .end local v2    # "i":I
    .end local v6    # "rowItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;>;"
    .end local v7    # "sectionName":Ljava/lang/String;
    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mContentView:Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v9, v0, v5}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setScrollIndexer(Ljava/util/List;Ljava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V
    .locals 3
    .param p1, "searchController"    # Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    if-eqz v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Expected search bar controller to only be set once"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 319
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    .line 320
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    .line 323
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 324
    .local v0, "searchBarView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 325
    iget-object v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setHasSearchBar()V

    .line 327
    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchText"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 456
    return-void
.end method
