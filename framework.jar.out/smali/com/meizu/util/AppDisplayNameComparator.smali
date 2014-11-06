.class public Lcom/meizu/util/AppDisplayNameComparator;
.super Ljava/lang/Object;
.source "AppDisplayNameComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mIsChineseLang:Z

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 2
    .parameter "pm"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/meizu/util/AppDisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    .line 26
    const-string/jumbo v0, "zh"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/util/AppDisplayNameComparator;->mIsChineseLang:Z

    .line 27
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    .line 28
    iget-object v0, p0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 29
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 10
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 34
    const/4 v1, 0x0

    .local v1, aIsSys:Z
    const/4 v4, 0x0

    .line 36
    .local v4, bIsSys:Z
    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_3

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .local v0, aCi:Landroid/content/pm/ComponentInfo;
    :goto_0
    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 38
    .local v2, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 39
    const/4 v1, 0x1

    .line 42
    :cond_0
    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_4

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    .local v3, bCi:Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v5, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 44
    .local v5, bi:Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_1

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    .line 45
    const/4 v4, 0x1

    .line 48
    :cond_1
    if-ne v1, v4, :cond_7

    .line 50
    iget-object v8, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.meizu.theme"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 66
    :cond_2
    :goto_2
    return v6

    .line 36
    .end local v0           #aCi:Landroid/content/pm/ComponentInfo;
    .end local v2           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #bCi:Landroid/content/pm/ComponentInfo;
    .end local v5           #bi:Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 42
    .restart local v0       #aCi:Landroid/content/pm/ComponentInfo;
    .restart local v2       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_4
    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    goto :goto_1

    .line 52
    .restart local v3       #bCi:Landroid/content/pm/ComponentInfo;
    .restart local v5       #bi:Landroid/content/pm/ApplicationInfo;
    :cond_5
    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.meizu.theme"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    .line 53
    goto :goto_2

    .line 55
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/meizu/util/AppDisplayNameComparator;->compareWithName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v6

    goto :goto_2

    .line 59
    :cond_7
    if-eq v1, v7, :cond_2

    move v6, v7

    .line 66
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/meizu/util/AppDisplayNameComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

.method public final compareWithName(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 24
    .parameter "a"
    .parameter "b"

    .prologue
    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 79
    .local v17, sa:Ljava/lang/CharSequence;
    if-nez v17, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 80
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mPM:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 81
    .local v18, sb:Ljava/lang/CharSequence;
    if-nez v18, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 82
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 83
    .local v19, str1:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, str2:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v9

    .line 85
    .local v9, len1:I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v10

    .line 87
    .local v10, len2:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mIsChineseLang:Z

    move/from16 v21, v0

    if-eqz v21, :cond_7

    .line 89
    if-lez v9, :cond_7

    if-lez v10, :cond_7

    .line 91
    const/4 v6, 0x0

    .local v6, index:I
    :goto_0
    if-ge v6, v9, :cond_7

    .line 93
    if-lt v6, v10, :cond_2

    .line 95
    const/16 v21, 0x1

    .line 222
    .end local v6           #index:I
    :goto_1
    return v21

    .line 97
    .restart local v6       #index:I
    :cond_2
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 98
    .local v2, ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 99
    .local v3, ch2:C
    if-eq v2, v3, :cond_6

    .line 102
    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v2, v0, :cond_3

    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v3, v0, :cond_4

    :cond_3
    const/16 v21, 0x80

    move/from16 v0, v21

    if-lt v3, v0, :cond_7

    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v2, v0, :cond_7

    .line 104
    :cond_4
    const/16 v21, 0x80

    move/from16 v0, v21

    if-ge v2, v0, :cond_5

    const/16 v21, -0x1

    goto :goto_1

    :cond_5
    const/16 v21, 0x1

    goto :goto_1

    .line 91
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    .end local v6           #index:I
    :cond_7
    const/4 v7, 0x0

    .local v7, index1:I
    const/4 v8, 0x0

    .local v8, index2:I
    const/4 v4, 0x0

    .local v4, count1:I
    const/4 v5, 0x0

    .line 113
    .local v5, count2:I
    :goto_2
    if-ge v7, v9, :cond_1c

    if-ge v8, v10, :cond_1c

    .line 114
    move v11, v7

    .line 115
    .local v11, num1:I
    move v13, v8

    .line 116
    .local v13, num2:I
    :goto_3
    if-ge v7, v9, :cond_8

    .line 117
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 118
    .restart local v2       #ch1:C
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v2, v0, :cond_8

    const/16 v21, 0x39

    move/from16 v0, v21

    if-le v2, v0, :cond_a

    .line 124
    .end local v2           #ch1:C
    :cond_8
    :goto_4
    if-ge v8, v10, :cond_9

    .line 125
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 126
    .restart local v3       #ch2:C
    const/16 v21, 0x30

    move/from16 v0, v21

    if-lt v3, v0, :cond_9

    const/16 v21, 0x39

    move/from16 v0, v21

    if-le v3, v0, :cond_b

    .line 132
    .end local v3           #ch2:C
    :cond_9
    sub-int v15, v7, v11

    .line 133
    .local v15, numlen1:I
    sub-int v16, v8, v13

    .line 135
    .local v16, numlen2:I
    move/from16 v0, v16

    if-eq v15, v0, :cond_12

    .line 136
    if-lez v15, :cond_11

    if-lez v16, :cond_11

    .line 137
    move v12, v11

    .local v12, num11:I
    move v14, v13

    .line 138
    .local v14, num22:I
    :goto_5
    if-ge v12, v7, :cond_c

    .line 139
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 140
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 121
    .end local v12           #num11:I
    .end local v14           #num22:I
    .end local v15           #numlen1:I
    .end local v16           #numlen2:I
    .restart local v2       #ch1:C
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 122
    goto :goto_3

    .line 129
    .end local v2           #ch1:C
    .restart local v3       #ch2:C
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 130
    goto :goto_4

    .line 145
    .end local v3           #ch2:C
    .restart local v12       #num11:I
    .restart local v14       #num22:I
    .restart local v15       #numlen1:I
    .restart local v16       #numlen2:I
    :cond_c
    :goto_6
    if-ge v14, v8, :cond_d

    .line 146
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_d

    .line 147
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 152
    :cond_d
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 153
    sub-int v21, v7, v12

    sub-int v22, v8, v14

    sub-int v21, v21, v22

    goto/16 :goto_1

    .line 156
    :cond_e
    :goto_7
    if-ge v12, v7, :cond_10

    if-ge v14, v8, :cond_10

    .line 157
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 158
    .restart local v2       #ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 159
    .restart local v3       #ch2:C
    if-ne v2, v3, :cond_f

    .line 160
    add-int/lit8 v12, v12, 0x1

    .line 161
    add-int/lit8 v14, v14, 0x1

    .line 162
    goto :goto_7

    .line 164
    :cond_f
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 167
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    :cond_10
    sub-int v21, v16, v15

    goto/16 :goto_1

    .line 170
    .end local v12           #num11:I
    .end local v14           #num22:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_1

    .line 174
    :cond_12
    if-lez v15, :cond_14

    .line 176
    :goto_8
    if-ge v11, v7, :cond_14

    .line 177
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 178
    .restart local v2       #ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 179
    .restart local v3       #ch2:C
    if-ne v2, v3, :cond_13

    .line 180
    add-int/lit8 v11, v11, 0x1

    .line 181
    goto :goto_8

    .line 183
    :cond_13
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 187
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    :cond_14
    if-ge v7, v9, :cond_15

    if-lt v8, v10, :cond_16

    .line 188
    :cond_15
    sub-int v21, v9, v10

    goto/16 :goto_1

    .line 191
    :cond_16
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 192
    .restart local v2       #ch1:C
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 193
    .restart local v3       #ch2:C
    const/16 v21, 0x61

    move/from16 v0, v21

    if-gt v2, v0, :cond_18

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-lt v2, v0, :cond_18

    .line 194
    const/16 v21, 0x41

    move/from16 v0, v21

    if-gt v3, v0, :cond_17

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-lt v3, v0, :cond_17

    .line 195
    add-int/lit8 v21, v3, 0x20

    move/from16 v0, v21

    int-to-char v3, v0

    .line 198
    :cond_17
    if-eq v2, v3, :cond_1b

    .line 199
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 202
    :cond_18
    const/16 v21, 0x41

    move/from16 v0, v21

    if-gt v2, v0, :cond_1a

    const/16 v21, 0x5a

    move/from16 v0, v21

    if-lt v2, v0, :cond_1a

    .line 203
    const/16 v21, 0x61

    move/from16 v0, v21

    if-gt v3, v0, :cond_19

    const/16 v21, 0x7a

    move/from16 v0, v21

    if-lt v3, v0, :cond_19

    .line 204
    add-int/lit8 v21, v3, -0x20

    move/from16 v0, v21

    int-to-char v3, v0

    .line 207
    :cond_19
    if-eq v2, v3, :cond_1b

    .line 208
    sub-int v21, v2, v3

    goto/16 :goto_1

    .line 211
    :cond_1a
    if-eq v2, v3, :cond_1b

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/util/AppDisplayNameComparator;->mCollator:Ljava/text/Collator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    goto/16 :goto_1

    .line 218
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 219
    add-int/lit8 v8, v8, 0x1

    .line 220
    goto/16 :goto_2

    .line 222
    .end local v2           #ch1:C
    .end local v3           #ch2:C
    .end local v11           #num1:I
    .end local v13           #num2:I
    .end local v15           #numlen1:I
    .end local v16           #numlen2:I
    :cond_1c
    sub-int v21, v9, v10

    goto/16 :goto_1
.end method
