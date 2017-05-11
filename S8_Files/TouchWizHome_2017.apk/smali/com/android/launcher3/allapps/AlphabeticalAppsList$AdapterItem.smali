.class public Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
.super Ljava/lang/Object;
.source "AlphabeticalAppsList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterItem"
.end annotation


# instance fields
.field public appIndex:I

.field public iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field public itemDetails:Lcom/android/launcher3/appssearch/ItemDetails;

.field public position:I

.field public rowAppIndex:I

.field public rowIndex:I

.field public sectionAppIndex:I

.field public sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

.field public sectionName:Ljava/lang/String;

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 125
    iput v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 131
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 133
    iput v1, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 135
    iput-object v0, p0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->itemDetails:Lcom/android/launcher3/appssearch/ItemDetails;

    return-void
.end method

.method public static asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 177
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 178
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 179
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 180
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 181
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 182
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 183
    iput-object p4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 184
    iput p5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 185
    return-object v0
.end method

.method public static asDivider(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 196
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 197
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 198
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 199
    return-object v0
.end method

.method public static asEmptySearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 189
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 190
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 191
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 192
    return-object v0
.end method

.method public static asGalaxyApp(ILcom/android/launcher3/appssearch/ItemDetails;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "itemDetail"    # Lcom/android/launcher3/appssearch/ItemDetails;
    .param p2, "appIndex"    # I

    .prologue
    .line 238
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 239
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 240
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 241
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->itemDetails:Lcom/android/launcher3/appssearch/ItemDetails;

    .line 242
    iput p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 243
    return-object v0
.end method

.method public static asListHeader(ILjava/lang/String;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 230
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 231
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 232
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 233
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 234
    return-object v0
.end method

.method public static asMarketSearch(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 203
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 204
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 205
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 206
    return-object v0
.end method

.method public static asNotiText(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 138
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 139
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 140
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 143
    return-object v0
.end method

.method public static asPredictedApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 170
    invoke-static/range {p0 .. p5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->asApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-result-object v0

    .line 171
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 172
    return-object v0
.end method

.method public static asRecentApp(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;Ljava/lang/String;ILcom/android/launcher3/common/base/item/IconInfo;I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;
    .param p2, "sectionName"    # Ljava/lang/String;
    .param p3, "sectionAppIndex"    # I
    .param p4, "iconInfo"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p5, "appIndex"    # I

    .prologue
    .line 148
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 149
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 150
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 151
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 152
    iput-object p2, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    .line 153
    iput p3, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionAppIndex:I

    .line 154
    iput-object p4, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    .line 155
    iput p5, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->appIndex:I

    .line 156
    return-object v0
.end method

.method public static asSectionBreak(ILcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I
    .param p1, "section"    # Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .prologue
    .line 160
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 161
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 162
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 163
    iput-object p1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionInfo:Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;

    .line 164
    iput-object v0, p1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$SectionInfo;->sectionBreakItem:Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    .line 165
    return-object v0
.end method

.method public static asTitle(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 210
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 211
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 212
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 213
    return-object v0
.end method

.method public static asViewGalaxyButton(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 217
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 218
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 219
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 220
    return-object v0
.end method

.method public static asViewMarketButton(I)Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    .locals 2
    .param p0, "pos"    # I

    .prologue
    .line 223
    new-instance v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;-><init>()V

    .line 224
    .local v0, "item":Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    .line 225
    iput p0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    .line 226
    return-object v0
.end method
