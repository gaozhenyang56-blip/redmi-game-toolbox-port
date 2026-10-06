.class public Lcom/miui/applicationlock/DropDownPreferenceAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/DropDownPreferenceAdapter$b;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/CharSequence;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0e0338

    const v1, 0x1020014

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->b:Landroid/view/LayoutInflater;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    sget-object v2, Lmiuix/preference/r;->c0:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/k;->q(Landroid/content/res/TypedArray;II)[Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    const-string p2, "DropDown1"

    aput-object p2, p1, v1

    const/4 p2, 0x1

    const-string v1, "DropDown2"

    aput-object v1, p1, p2

    const-string p2, "DropDown3"

    aput-object p2, p1, v0

    iput-object p1, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    :goto_0
    return-void
.end method


# virtual methods
.method public addAll([Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    array-length v1, v0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    array-length v1, v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    array-length v0, v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0e013a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/applicationlock/DropDownPreferenceAdapter$b;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/miui/applicationlock/DropDownPreferenceAdapter$b;-><init>(Lcom/miui/applicationlock/DropDownPreferenceAdapter$a;)V

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/applicationlock/DropDownPreferenceAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lcom/miui/applicationlock/DropDownPreferenceAdapter$b;

    iget-object p3, p3, Lcom/miui/applicationlock/DropDownPreferenceAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/applicationlock/DropDownPreferenceAdapter;->a:[Ljava/lang/CharSequence;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
