.class public final Lcom/sec/android/app/launcher/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AppOrder:[I

.field public static final AppOrder_className:I = 0x1

.field public static final AppOrder_folderColor:I = 0x6

.field public static final AppOrder_hidden:I = 0x5

.field public static final AppOrder_isFrontPosition:I = 0x0

.field public static final AppOrder_packageName:I = 0x2

.field public static final AppOrder_screen:I = 0x3

.field public static final AppOrder_title:I = 0x4

.field public static final Extra:[I

.field public static final Extra_key:I = 0x0

.field public static final Extra_value:I = 0x1

.field public static final Favorite:[I

.field public static final Favorite_className:I = 0x0

.field public static final Favorite_festival:I = 0xb

.field public static final Favorite_folderColor:I = 0xe

.field public static final Favorite_hidden:I = 0xd

.field public static final Favorite_hideAddButton:I = 0xc

.field public static final Favorite_icon:I = 0x7

.field public static final Favorite_instance:I = 0xa

.field public static final Favorite_packageName:I = 0x1

.field public static final Favorite_screen:I = 0x2

.field public static final Favorite_spanX:I = 0x5

.field public static final Favorite_spanY:I = 0x6

.field public static final Favorite_title:I = 0x8

.field public static final Favorite_uri:I = 0x9

.field public static final Favorite_x:I = 0x3

.field public static final Favorite_y:I = 0x4

.field public static final Hotseat:[I

.field public static final Hotseat_cellCountX:I = 0x0

.field public static final Hotseat_cellCountY:I = 0x1

.field public static final IconView:[I

.field public static final IconView_iconDisplay:I = 0x1

.field public static final IconView_iconSizeOverride:I = 0x0

.field public static final Include:[I

.field public static final Include_folderItems:I = 0x1

.field public static final Include_workspace:I = 0x0

.field public static final InsettableFrameLayout_Layout:[I

.field public static final InsettableFrameLayout_Layout_layout_ignoreInsets:I = 0x0

.field public static final PageIndicator:[I

.field public static final PageIndicator_maxVisibleSize:I = 0x0

.field public static final PagedView:[I

.field public static final PagedView_pageIndicator:I = 0x2

.field public static final PagedView_pageLayoutHeightGap:I = 0x1

.field public static final PagedView_pageLayoutWidthGap:I = 0x0

.field public static final RecyclerView:[I

.field public static final RecyclerView_android_descendantFocusability:I = 0x1

.field public static final RecyclerView_android_orientation:I = 0x0

.field public static final RecyclerView_fastScrollEnabled:I = 0x6

.field public static final RecyclerView_fastScrollHorizontalThumbDrawable:I = 0x9

.field public static final RecyclerView_fastScrollHorizontalTrackDrawable:I = 0xa

.field public static final RecyclerView_fastScrollVerticalThumbDrawable:I = 0x7

.field public static final RecyclerView_fastScrollVerticalTrackDrawable:I = 0x8

.field public static final RecyclerView_layoutManager:I = 0x2

.field public static final RecyclerView_reverseLayout:I = 0x4

.field public static final RecyclerView_spanCount:I = 0x3

.field public static final RecyclerView_stackFromEnd:I = 0x5

.field public static final WidgetPageLayout:[I

.field public static final WidgetPageLayout_desiredheight:I = 0x3

.field public static final WidgetPageLayout_desiredwidth:I = 0x2

.field public static final WidgetPageLayout_horizontalgap:I = 0x0

.field public static final WidgetPageLayout_verticalgap:I = 0x1

.field public static final Workspace:[I

.field public static final Workspace_cellCountX:I = 0x1

.field public static final Workspace_cellCountY:I = 0x2

.field public static final Workspace_defaultScreen:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 2078
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->AppOrder:[I

    .line 2188
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->Extra:[I

    .line 2257
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->Favorite:[I

    .line 2477
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->Hotseat:[I

    .line 2520
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->IconView:[I

    .line 2576
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->Include:[I

    .line 2609
    new-array v0, v3, [I

    const v1, 0x7f010016

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->InsettableFrameLayout_Layout:[I

    .line 2636
    new-array v0, v3, [I

    const v1, 0x7f010017

    aput v1, v0, v2

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->PageIndicator:[I

    .line 2667
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->PagedView:[I

    .line 2742
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->RecyclerView:[I

    .line 2885
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->WidgetPageLayout:[I

    .line 2966
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/sec/android/app/launcher/R$styleable;->Workspace:[I

    return-void

    .line 2078
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f01000b
        0x7f010010
        0x7f010011
    .end array-data

    .line 2188
    :array_1
    .array-data 4
        0x7f010001
        0x7f010002
    .end array-data

    .line 2257
    :array_2
    .array-data 4
        0x7f010003
        0x7f010004
        0x7f010005
        0x7f010006
        0x7f010007
        0x7f010008
        0x7f010009
        0x7f01000a
        0x7f01000b
        0x7f01000c
        0x7f01000d
        0x7f01000e
        0x7f01000f
        0x7f010010
        0x7f010011
    .end array-data

    .line 2477
    :array_3
    .array-data 4
        0x7f010029
        0x7f01002a
    .end array-data

    .line 2520
    :array_4
    .array-data 4
        0x7f010012
        0x7f010013
    .end array-data

    .line 2576
    :array_5
    .array-data 4
        0x7f010014
        0x7f010015
    .end array-data

    .line 2667
    :array_6
    .array-data 4
        0x7f010018
        0x7f010019
        0x7f01001a
    .end array-data

    .line 2742
    :array_7
    .array-data 4
        0x10100c4
        0x10100f1
        0x7f01001b
        0x7f01001c
        0x7f01001d
        0x7f01001e
        0x7f01001f
        0x7f010020
        0x7f010021
        0x7f010022
        0x7f010023
    .end array-data

    .line 2885
    :array_8
    .array-data 4
        0x7f010024
        0x7f010025
        0x7f010026
        0x7f010027
    .end array-data

    .line 2966
    :array_9
    .array-data 4
        0x7f010028
        0x7f010029
        0x7f01002a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2055
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
