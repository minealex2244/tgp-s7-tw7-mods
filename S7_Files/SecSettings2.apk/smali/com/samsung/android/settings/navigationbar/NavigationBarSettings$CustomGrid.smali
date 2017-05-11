.class public Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;
.super Landroid/widget/BaseAdapter;
.source "NavigationBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomGrid"
.end annotation


# instance fields
.field private final colorValue:[I

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->colorValue:[I

    return-object v0
.end method

.method public constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;Landroid/content/Context;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "colorValue"    # [I

    .prologue
    .line 281
    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->mContext:Landroid/content/Context;

    .line 283
    iput-object p3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->colorValue:[I

    .line 281
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->colorValue:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 293
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 298
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 309
    .local v7, "inflater":Landroid/view/LayoutInflater;
    const v0, 0x7f040188

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 310
    add-int/2addr v0, v1

    .line 312
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 310
    add-int v8, v0, v1

    .line 313
    .local v8, "itemSize":I
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    const v0, 0x7f1104a3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 316
    .local v6, "colorButton":Landroid/widget/ImageView;
    const v0, 0x7f1104a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 317
    .local v4, "selectedRing":Landroid/widget/ImageView;
    const v0, 0x7f1104a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 319
    .local v5, "selectedCheck":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->colorValue:[I

    aget v0, v0, p1

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;ILandroid/view/ViewGroup;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings;->-get0()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 348
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarSettings$CustomGrid;->colorValue:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 355
    const v0, 0x7f0204f6

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 356
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 359
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 360
    :cond_1
    :goto_1
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 362
    :cond_2
    return-object p2

    .line 351
    :cond_3
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 359
    :cond_4
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    goto :goto_1
.end method