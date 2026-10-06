.class Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/view/l$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

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

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->i0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnchorView(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p2}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->l0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/l;->setAnimateView(Landroid/view/View;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->m0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    new-instance p2, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h$a;

    invoke-direct {p2, p0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h$a;-><init>(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    check-cast p1, Lmiuix/view/l;

    invoke-interface {p1}, Lmiuix/view/l;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->m0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-virtual {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->exitSearchMode()V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->H0(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity$h;->a:Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->r0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;->w0(Lcom/miui/gamebooster/videobox/settings/VideoBoxAppManageActivity;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
