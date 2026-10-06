.class public Lcom/miui/permcenter/settings/model/FlexiblePreference;
.super Lcom/miui/permcenter/settings/model/NoClickEffectPreference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/j;


# instance fields
.field private b:F

.field private c:Z

.field private d:Landroid/view/ViewStub;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/settings/model/FlexiblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/settings/model/FlexiblePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->e:Z

    sget-object v0, Lef/y;->c1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->b:F

    invoke-virtual {p1, p3, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->c:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->d:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->e:Z

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/permcenter/settings/model/NoClickEffectPreference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget v0, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const v0, 0x7f0b0373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->b:F

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->c:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b041e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->d:Landroid/view/ViewStub;

    iget-boolean p1, p0, Lcom/miui/permcenter/settings/model/FlexiblePreference;->e:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/model/FlexiblePreference;->h()V

    :cond_2
    return-void
.end method
