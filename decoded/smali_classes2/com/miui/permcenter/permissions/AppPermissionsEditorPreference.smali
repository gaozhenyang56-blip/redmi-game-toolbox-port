.class public Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;
.super Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;
.source "SourceFile"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;

.field private f:Lcom/miui/permission/PermissionGroupInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->e:Ljava/lang/Boolean;

    const p1, 0x7f0e0418

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public f()Lcom/miui/permission/PermissionGroupInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->f:Lcom/miui/permission/PermissionGroupInfo;

    return-object v0
.end method

.method public g(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public h(Lcom/miui/permission/PermissionGroupInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->f:Lcom/miui/permission/PermissionGroupInfo;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->d:Ljava/lang/String;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 6
    .param p1    # Landroidx/preference/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0bc9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/AppPermissionsEditorPreference;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->a:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    const/4 v2, 0x2

    const v3, 0x7f080927

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const v0, 0x7f080b36

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f121111

    goto :goto_5

    :cond_2
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->c:Z

    if-eqz v0, :cond_3

    const v0, 0x7f080e2e

    goto :goto_1

    :cond_3
    const v0, 0x7f080929

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f12110d

    goto :goto_5

    :cond_4
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->c:Z

    if-eqz v0, :cond_5

    const v0, 0x7f080925

    goto :goto_2

    :cond_5
    const v0, 0x7f080926

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f121107

    goto :goto_5

    :cond_6
    iget-wide v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->b:J

    const-wide v4, 0x4000000000L

    cmp-long v0, v0, v4

    if-nez v0, :cond_7

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f121106

    goto :goto_5

    :cond_7
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->c:Z

    if-eqz v0, :cond_8

    const v0, 0x7f08092a

    goto :goto_3

    :cond_8
    const v0, 0x7f08092b

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f12110e

    goto :goto_5

    :cond_9
    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/AppBasePermsEditorPreference;->c:Z

    if-eqz v0, :cond_a

    const v0, 0x7f08092c

    goto :goto_4

    :cond_a
    const v0, 0x7f08092d

    :goto_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f12110f

    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method
