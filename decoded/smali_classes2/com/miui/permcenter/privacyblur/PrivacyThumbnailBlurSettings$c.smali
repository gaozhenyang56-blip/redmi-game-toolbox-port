.class Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    check-cast p1, Lmiuix/view/l;

    iget-object p2, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p2}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p2}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->r0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorApplyExtraPaddingByUser(Z)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->s0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->t0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0602ce

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->s0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->g0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lmiuix/view/l;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1, v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->h0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Lmiuix/view/l;)Lmiuix/view/l;

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->t0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const v1, 0x106000d

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->m0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Lcom/miui/permcenter/privacyblur/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/privacyblur/a;->clear()V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->f0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->p0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->r0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->q0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroid/view/View;

    move-result-object p1

    const v1, 0x1020009

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings$c;->a:Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;

    invoke-static {p1}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->r0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;->i0(Lcom/miui/permcenter/privacyblur/PrivacyThumbnailBlurSettings;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
