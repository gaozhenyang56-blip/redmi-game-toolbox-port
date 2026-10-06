.class public Lcom/miui/networkassistant/ui/view/TextIconPreference;
.super Lmiuix/preference/TextPreference;
.source "SourceFile"


# instance fields
.field rightIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;)V

    const p1, 0x7f08082a

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TextIconPreference;->rightIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7f08082a

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TextIconPreference;->rightIconId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f08082a

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TextIconPreference;->rightIconId:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/preference/TextPreference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b011a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iget v0, p0, Lcom/miui/networkassistant/ui/view/TextIconPreference;->rightIconId:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    return-void
.end method

.method public setRightIcon(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    iput p1, p0, Lcom/miui/networkassistant/ui/view/TextIconPreference;->rightIconId:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
