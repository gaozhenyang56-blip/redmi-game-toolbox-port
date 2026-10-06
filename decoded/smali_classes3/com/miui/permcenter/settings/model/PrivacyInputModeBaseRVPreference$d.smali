.class Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;
.super Landroidx/recyclerview/widget/RecyclerView$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$h<",
        "Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;

.field final synthetic b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$h;-><init>()V

    iput-object p2, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->a:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-static {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public k(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;I)V
    .locals 0
    .param p1    # Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1, p2}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->a(I)V

    return-void
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p2, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->a:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result v0

    invoke-interface {p2, v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$c;->b(Z)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lx4/t;->s(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f0e0246

    goto :goto_0

    :cond_1
    const p2, 0x7f0e024e

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->b:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-direct {p2, v0, p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;-><init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->k(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$d;->l(Landroid/view/ViewGroup;I)Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;

    move-result-object p1

    return-object p1
.end method
