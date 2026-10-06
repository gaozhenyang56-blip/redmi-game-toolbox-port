.class public Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;
.super Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;
.source "SourceFile"


# instance fields
.field private x:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;-><init>()V

    return-void
.end method

.method static synthetic u0(Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->v0(Z)V

    return-void
.end method

.method private v0(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q0()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->k:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-static {p1, v0}, Lm2/c;->c(Landroid/content/ContentResolver;Ll2/g;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p1}, Ll2/b;->p()Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q0()V

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->k:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-static {v0, v1, p1}, Lm2/c;->e(Landroid/content/ContentResolver;Ll2/b;Landroid/util/SparseBooleanArray;)V

    :goto_0
    return-void
.end method

.method public static x0(Z)Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showTitle"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private z0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->e:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    const/4 v3, 0x1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lm2/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x:Landroid/view/MenuItem;

    :cond_2
    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    if-lez v1, :cond_2

    move v2, v3

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->y0(Lq0/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public g0()I
    .locals 1

    const v0, 0x7f080936

    return v0
.end method

.method public h0(Landroid/content/Context;)Ll2/g;
    .locals 1

    new-instance v0, Ll2/e;

    invoke-direct {v0, p1}, Ll2/e;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i0(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "maml/antispam/dark/call"

    goto :goto_0

    :cond_0
    const-string p1, "maml/antispam/light/call"

    :goto_0
    return-object p1
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    const-string v0, "firewalltype"

    return-object v0
.end method

.method protected n0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x:Landroid/view/MenuItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public o0(Landroid/view/ActionMode;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->m:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    const v1, 0x7f120645

    goto :goto_0

    :cond_1
    const v1, 0x7f120489

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_2

    const v1, 0x7f120487

    goto :goto_1

    :cond_2
    const v1, 0x7f120488

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12046e

    new-instance v2, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$b;-><init>(Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;ZLandroid/view/ActionMode;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->m:Lmiuix/appcompat/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    if-ne v2, v1, :cond_1

    iget v1, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, "firewalltype >= 3"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firewalltype = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v6, v1

    new-instance v1, Lq0/b;

    iget-object v3, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    sget-object v4, Lmiui/provider/ExtraContacts$Calls;->CONTENT_CONVERSATION_URI:Landroid/net/Uri;

    const-string v2, "*"

    const-string v5, "count() as total"

    const-string v7, "sum(case when is_read = 0 then 1 else 0 end) as unRead"

    const-string v8, "max(date)"

    filled-new-array {v2, v5, v7, v8}, [Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v2, Lq0/b;

    iget-object v10, v0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    sget-object v11, Lmiui/provider/ExtraContacts$Calls;->CONTENT_CONVERSATION_URI:Landroid/net/Uri;

    const-string v3, "firewalltype"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v12

    new-array v14, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v1

    const-string v13, "firewalltype >= ? "

    const-string v15, "date DESC"

    move-object v9, v2

    invoke-direct/range {v9 .. v15}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f0f0006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b02f8

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->z0()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->e:Z

    if-nez p2, :cond_0

    const p2, 0x7f1200f9

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p0(I)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object p2

    const/4 p3, 0x4

    invoke-virtual {p2, p3, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_0
    invoke-static {}, Lm2/c;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q0()V

    :cond_1
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->x:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->o0(Landroid/view/ActionMode;Z)V

    :cond_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->onPause()V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    new-instance v1, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$a;

    invoke-direct {v1, p0, v0}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain$a;-><init>(Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public s0()V
    .locals 3

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public w0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "normalized_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "presentation"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v1, "unRead"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v1, "total"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v1, "firewalltype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    new-instance v1, Ll2/e$c;

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Ll2/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;IIIJI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public y0(Lq0/c;Landroid/database/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lq0/c;->j()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->i:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->l0()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const p1, 0x7f120418

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p0(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    sget-object p1, Lm2/a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->w0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll2/g;->setData(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/CallLogFragmentInMain;->z0()V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t0(Landroid/database/Cursor;)V

    :goto_1
    return-void
.end method
