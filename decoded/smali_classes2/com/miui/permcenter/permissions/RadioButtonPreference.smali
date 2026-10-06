.class public Lcom/miui/permcenter/permissions/RadioButtonPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"

# interfaces
.implements Lmiuix/preference/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/RadioGroup;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private e:Landroid/widget/RadioButton;

.field private f:Landroid/widget/RadioButton;

.field private g:Landroid/widget/RadioButton;

.field private h:Landroid/widget/RadioButton;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Lwb/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/permcenter/permissions/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->m:Z

    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->n:Z

    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->o:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->p:Z

    iput-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->a:Landroid/content/Context;

    const p1, 0x7f0e047f

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->n:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->e:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public g(Lwb/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->q:Lwb/b;

    return-void
.end method

.method public h(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->o:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public j(Landroid/view/View$OnClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->c:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->e:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g:Landroid/widget/RadioButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public k(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i:Z

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public l(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->p:Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 4
    .param p1    # Landroidx/preference/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v1, Lcom/miui/permcenter/permissions/RadioButtonPreference$a;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/permissions/RadioButtonPreference$a;-><init>(Lcom/miui/permcenter/permissions/RadioButtonPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0946

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->b:Landroid/widget/RadioGroup;

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b08aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->e:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->i:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b08a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->j:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->n:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b08ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->o:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b08af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h:Landroid/widget/RadioButton;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->l:Z

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h:Landroid/widget/RadioButton;

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->p:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->d:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->b:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    :cond_3
    iget-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->c:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->f:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->g:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->h:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/RadioButtonPreference;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method
