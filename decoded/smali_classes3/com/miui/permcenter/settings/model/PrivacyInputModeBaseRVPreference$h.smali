.class Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field final synthetic f:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->f:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0cf3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0ce1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->c:Landroid/widget/TextView;

    const p1, 0x7f0b054c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b05c7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->d:Landroid/view/View;

    const p1, 0x7f0b057d

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->f:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-static {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->f:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-static {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, v0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->d:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->f:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->b:Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->e:Z

    invoke-static {v1, v2, v3, v4}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Ljava/lang/String;Landroid/widget/TextView;Z)V

    :cond_0
    iget-object v1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->e:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->a()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    :cond_1
    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$h;->d:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
