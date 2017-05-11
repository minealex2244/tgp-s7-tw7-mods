.class public Lcom/android/launcher3/appspicker/AppsPickerFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "AppsPickerFocusListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerFocusListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    return-void
.end method

.method private static handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 21
    .param p0, "v"    # Landroid/view/View;
    .param p1, "keyCode"    # I
    .param p2, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 36
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 42
    .local v16, "rowView":Landroid/widget/LinearLayout;
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v17, v19

    check-cast v17, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 43
    .local v17, "viewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 44
    .local v9, "listView":Landroid/widget/ListView;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-nez v19, :cond_2

    .line 45
    :cond_0
    const/16 v18, 0x0

    .line 152
    :goto_1
    return v18

    .line 39
    .end local v9    # "listView":Landroid/widget/ListView;
    .end local v16    # "rowView":Landroid/widget/LinearLayout;
    .end local v17    # "viewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .restart local v16    # "rowView":Landroid/widget/LinearLayout;
    goto :goto_0

    .line 47
    .restart local v9    # "listView":Landroid/widget/ListView;
    .restart local v17    # "viewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_2
    const/4 v6, 0x0

    .line 48
    .local v6, "iconIndex":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f0b0000

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 49
    .local v10, "maxRowItem":I
    const/16 v19, 0x0

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    .line 51
    .local v15, "rowIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v10, :cond_4

    .line 52
    aget-object v19, v17, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 53
    aget-object v19, v17, v5

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    .line 51
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 57
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    .line 58
    .local v2, "action":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v4, 0x1

    .line 59
    .local v4, "handleKeyEvent":Z
    :goto_3
    const/16 v18, 0x0

    .line 61
    .local v18, "wasHandled":Z
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 64
    :pswitch_0
    if-eqz v4, :cond_9

    .line 65
    if-lez v15, :cond_e

    .line 66
    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 68
    .local v3, "firstRowView":I
    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_6

    .line 69
    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 70
    const/16 v18, 0x1

    goto :goto_1

    .line 58
    .end local v3    # "firstRowView":I
    .end local v4    # "handleKeyEvent":Z
    .end local v18    # "wasHandled":Z
    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 72
    .restart local v3    # "firstRowView":I
    .restart local v4    # "handleKeyEvent":Z
    .restart local v18    # "wasHandled":Z
    :cond_6
    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_7

    .line 73
    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 75
    :cond_7
    add-int/lit8 v19, v15, -0x1

    sub-int v19, v19, v3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 77
    .local v13, "preRowView":Landroid/widget/LinearLayout;
    if-nez v13, :cond_8

    .line 78
    const-string v19, "AppsPickerFocusListener"

    const-string v20, "preRowView is not visible yet"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 81
    :cond_8
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v14, v19

    check-cast v14, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 82
    .local v14, "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    aget-object v19, v14, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_a

    .line 83
    aget-object v19, v14, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 84
    aget-object v19, v14, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 106
    .end local v3    # "firstRowView":I
    .end local v13    # "preRowView":Landroid/widget/LinearLayout;
    .end local v14    # "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_9
    :goto_4
    const/16 v18, 0x1

    .line 107
    goto/16 :goto_1

    .line 87
    .restart local v3    # "firstRowView":I
    .restart local v13    # "preRowView":Landroid/widget/LinearLayout;
    .restart local v14    # "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_a
    const/4 v8, 0x0

    .local v8, "lastVisibleIcon":I
    :goto_5
    if-ge v8, v10, :cond_b

    .line 88
    aget-object v19, v14, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_d

    .line 89
    add-int/lit8 v8, v8, -0x1

    .line 93
    :cond_b
    if-ne v8, v10, :cond_c

    .line 94
    add-int/lit8 v8, v8, -0x1

    .line 96
    :cond_c
    aget-object v19, v14, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 97
    aget-object v19, v14, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_4

    .line 87
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 100
    .end local v3    # "firstRowView":I
    .end local v8    # "lastVisibleIcon":I
    .end local v13    # "preRowView":Landroid/widget/LinearLayout;
    .end local v14    # "preViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_e
    aget-object v19, v17, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->clearFocus()V

    goto :goto_4

    .line 109
    :pswitch_1
    if-eqz v4, :cond_12

    .line 110
    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    .line 111
    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 112
    .restart local v3    # "firstRowView":I
    invoke-virtual {v9}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    .line 114
    .local v7, "lastRowView":I
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_f

    .line 115
    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 116
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 118
    :cond_f
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_10

    .line 119
    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 121
    :cond_10
    add-int/lit8 v19, v15, 0x1

    sub-int v19, v19, v3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 123
    .local v11, "nextRowView":Landroid/widget/LinearLayout;
    if-nez v11, :cond_11

    .line 124
    const-string v19, "AppsPickerFocusListener"

    const-string v20, "nextRowView is not visible yet"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 127
    :cond_11
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v12, v19

    check-cast v12, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    .line 128
    .local v12, "nextViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    aget-object v19, v12, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_13

    .line 129
    aget-object v19, v12, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 130
    aget-object v19, v12, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 147
    .end local v3    # "firstRowView":I
    .end local v7    # "lastRowView":I
    .end local v11    # "nextRowView":Landroid/widget/LinearLayout;
    .end local v12    # "nextViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_12
    :goto_6
    const/16 v18, 0x1

    .line 148
    goto/16 :goto_1

    .line 133
    .restart local v3    # "firstRowView":I
    .restart local v7    # "lastRowView":I
    .restart local v11    # "nextRowView":Landroid/widget/LinearLayout;
    .restart local v12    # "nextViewHolders":[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    :cond_13
    const/4 v8, 0x0

    .restart local v8    # "lastVisibleIcon":I
    :goto_7
    if-ge v8, v6, :cond_14

    .line 134
    aget-object v19, v12, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_16

    .line 135
    add-int/lit8 v8, v8, -0x1

    .line 139
    :cond_14
    if-ne v8, v6, :cond_15

    .line 140
    add-int/lit8 v8, v8, -0x1

    .line 142
    :cond_15
    aget-object v19, v12, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 143
    aget-object v19, v12, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_6

    .line 133
    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 188
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "e"    # Landroid/view/KeyEvent;

    .prologue
    .line 157
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 167
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 172
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 177
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 162
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
