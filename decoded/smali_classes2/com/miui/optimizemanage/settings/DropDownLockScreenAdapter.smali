.class public Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$b;
    }
.end annotation


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const p2, 0x7f0e0338

    const v0, 0x1020014

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->b:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03004c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length p2, p1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->a:[Ljava/lang/String;

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->a:[Ljava/lang/String;

    array-length v1, v0

    if-ge p2, v1, :cond_0

    aget v1, p1, p2

    invoke-direct {p0, v1}, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->getMemoryCleanDelayTimeString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMemoryCleanDelayTimeString(I)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120634

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100024

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->a:[Ljava/lang/String;

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

    iget-object p2, p0, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->b:Landroid/view/LayoutInflater;

    const v0, 0x7f0e013a

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$b;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$b;-><init>(Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$a;)V

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_1

    check-cast p3, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$b;

    iget-object p3, p3, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter$b;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/optimizemanage/settings/DropDownLockScreenAdapter;->a:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
