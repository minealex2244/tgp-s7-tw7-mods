.class public Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsPickerSearchListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerListAdapter"


# instance fields
.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mContext:Landroid/content/Context;

.field private mHighlightTextColor:I

.field private mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

.field private mIsWhiteBg:Z

.field private mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mItemContainerClickListener:Landroid/view/View$OnClickListener;

.field private mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mMaxNumAppsPerRow:I

.field private mNumAppsPerRow:I

.field private mSearchText:Ljava/lang/String;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apps"    # Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    .param p3, "isWhiteBg"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mMaxNumAppsPerRow:I

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    .line 50
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlightTextColor:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    .line 52
    iput-boolean p3, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mIsWhiteBg:Z

    .line 53
    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mIsWhiteBg:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setContentColorAndBackground(Z)V

    .line 54
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    .line 55
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;-><init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;-><init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-object v0
.end method

.method private displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 197
    const/4 v2, -0x1

    .line 198
    .local v2, "indexOf":I
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 201
    .local v5, "highlightStrLength":I
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 202
    .local v4, "highLightText":Landroid/text/Spannable;
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->queryForIndia(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 204
    .local v7, "queryForIndian":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChinesePinyinSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlightTextColor:I

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 209
    .local v6, "name":Ljava/lang/CharSequence;
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .end local v6    # "name":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 210
    :cond_1
    if-eqz v7, :cond_2

    .line 211
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 212
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 213
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setTextHighLight(Landroid/widget/TextView;ILjava/lang/String;Landroid/text/Spannable;I)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 216
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setTextHighLight(Landroid/widget/TextView;ILjava/lang/String;Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method private queryForIndia(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 230
    .line 231
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 230
    invoke-static {v1, p2, v2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    .line 232
    .local v0, "isQueryForIndian":[C
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 233
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private setContentColorAndBackground(Z)V
    .locals 3
    .param p1, "whiteBg"    # Z

    .prologue
    .line 237
    if-eqz p1, :cond_0

    const v0, 0x7f0d0003

    .line 238
    .local v0, "textColorId":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mTextColor:I

    .line 239
    return-void

    .line 237
    .end local v0    # "textColorId":I
    :cond_0
    const v0, 0x7f0d0004

    goto :goto_0
.end method

.method private setTextHighLight(Landroid/widget/TextView;ILjava/lang/String;Landroid/text/Spannable;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "indexOf"    # I
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "highLightText"    # Landroid/text/Spannable;
    .param p5, "highlightStrLength"    # I

    .prologue
    .line 222
    add-int v0, p2, p5

    if-gt p2, v0, :cond_0

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 223
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlightTextColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v1, p2, p5

    const/4 v2, 0x0

    invoke-interface {p4, v0, p2, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 225
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 90
    const-string v0, "AppsPickerListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    mul-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    .line 97
    .local v0, "item":Lcom/android/launcher3/common/base/item/IconInfo;
    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 104
    if-nez p2, :cond_6

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 106
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f030011

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 107
    const v12, 0x7f0f002a

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 109
    .local v8, "itemContainer":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mMaxNumAppsPerRow:I

    new-array v3, v12, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 110
    .local v3, "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v12, v3

    if-ge v4, v12, :cond_1

    .line 111
    const v12, 0x7f03000e

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 112
    .local v9, "itemView":Landroid/view/ViewGroup;
    new-instance v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-direct {v12}, Lcom/android/launcher3/appspicker/AppIconViewHolder;-><init>()V

    aput-object v12, v3, v4

    .line 113
    aget-object v12, v3, v4

    iput-object v9, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    .line 114
    aget-object v13, v3, v4

    const v12, 0x7f0f002e

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v13, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    .line 115
    aget-object v13, v3, v4

    const v12, 0x7f0f002f

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v13, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    .line 116
    aget-object v13, v3, v4

    const v12, 0x7f0f0030

    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/CheckBox;

    iput-object v12, v13, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 118
    if-lez v4, :cond_0

    .line 119
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v2, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 121
    .local v2, "blankViewParam":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 122
    aget-object v12, v3, v4

    new-instance v13, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v13, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    .line 123
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    invoke-virtual {v8, v12, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v2    # "blankViewParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v10, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v10, "itemViewParam":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v12, 0x0

    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 128
    invoke-virtual {v8, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    .end local v9    # "itemView":Landroid/view/ViewGroup;
    .end local v10    # "itemViewParam":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    .end local v4    # "i":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v8    # "itemContainer":Landroid/widget/LinearLayout;
    :goto_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    mul-int v11, p1, v12

    .line 137
    .local v11, "row":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mMaxNumAppsPerRow:I

    if-ge v4, v12, :cond_a

    .line 138
    add-int v1, v11, v4

    .line 139
    .local v1, "adapterIndex":I
    const/4 v6, 0x0

    .line 140
    .local v6, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v12}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v1, v12, :cond_2

    .line 141
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v12}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v6, v12, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 143
    :cond_2
    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    if-ge v4, v12, :cond_7

    .line 144
    aget-object v12, v3, v4

    iput-object v6, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 145
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 146
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v13, v3, v4

    iget-object v13, v13, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 149
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v13, v3, v4

    iget-object v13, v13, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 150
    aget-object v12, v3, v4

    iput v4, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    .line 151
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 152
    aget-object v12, v3, v4

    move/from16 v0, p1

    iput v0, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    .line 153
    if-lez v4, :cond_3

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v12, :cond_3

    .line 154
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 156
    :cond_3
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-object v13, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    aget-object v13, v3, v4

    iget-object v13, v13, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mIsWhiteBg:Z

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    .line 158
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v13, v6, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 159
    const/4 v7, 0x0

    .line 160
    .local v7, "isChecked":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    if-eqz v12, :cond_4

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    invoke-interface {v12, v6}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v7

    .line 163
    :cond_4
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v12, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5

    .line 166
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-object v13, v6, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 137
    .end local v7    # "isChecked":Z
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 133
    .end local v1    # "adapterIndex":I
    .end local v3    # "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    .end local v4    # "i":I
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v11    # "row":I
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object v3, v12

    check-cast v3, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .restart local v3    # "holders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    goto/16 :goto_1

    .line 169
    .restart local v1    # "adapterIndex":I
    .restart local v4    # "i":I
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .restart local v11    # "row":I
    :cond_7
    aget-object v12, v3, v4

    const/4 v13, 0x0

    iput-object v13, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 170
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 171
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    if-ge v4, v12, :cond_9

    .line 173
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 180
    :cond_8
    :goto_4
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 181
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 182
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 185
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 175
    :cond_9
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 176
    if-lez v4, :cond_8

    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v12, :cond_8

    .line 177
    aget-object v12, v3, v4

    iget-object v12, v12, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 189
    .end local v1    # "adapterIndex":I
    .end local v6    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_a
    return-object p2
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0
    .param p1, "search"    # Ljava/lang/String;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    .line 81
    return-void
.end method
