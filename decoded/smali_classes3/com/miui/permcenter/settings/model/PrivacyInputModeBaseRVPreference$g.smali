.class Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/widget/ImageView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/TextView;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/view/View;

.field final synthetic j:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->j:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0cf4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->b:Landroid/widget/TextView;

    const p1, 0x7f0b0ce2

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->c:Landroid/widget/TextView;

    const p1, 0x7f0b0170

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->a:Landroid/widget/ImageView;

    const p1, 0x7f0b0cf5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->e:Landroid/widget/TextView;

    const p1, 0x7f0b0ce3

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->f:Landroid/widget/TextView;

    const p1, 0x7f0b0171

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->d:Landroid/widget/ImageView;

    const p1, 0x7f0b05c7

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->g:Landroid/view/View;

    const p1, 0x7f0b0580

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->h:Landroid/view/View;

    const p1, 0x7f0b0582

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->i:Landroid/view/View;

    return-void
.end method

.method private a(ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->j:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-static {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->j:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-static {v0}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->d(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p2, p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->d:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->j:Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->d()Ljava/lang/String;

    move-result-object p4

    iget-boolean v1, p1, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->e:Z

    invoke-static {p2, p4, p3, v1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;->e(Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference;Ljava/lang/String;Landroid/widget/TextView;Z)V

    :cond_0
    if-eqz p5, :cond_2

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->a()Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p5, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$e;->a()Landroid/view/View$OnClickListener;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p5, v0}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p4, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 13

    mul-int/lit8 v6, p1, 0x2

    iget-object v2, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->h:Landroid/view/View;

    move-object v0, p0

    move v1, v6

    invoke-direct/range {v0 .. v5}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->a(ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    add-int/lit8 v8, v6, 0x1

    iget-object v9, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->d:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->e:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->f:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->i:Landroid/view/View;

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->a(ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/settings/model/PrivacyInputModeBaseRVPreference$g;->g:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
