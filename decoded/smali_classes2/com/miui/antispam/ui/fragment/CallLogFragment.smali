.class public Lcom/miui/antispam/ui/fragment/CallLogFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/appcompat/app/Fragment;",
        "Landroidx/loader/app/a$a<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lmiuix/recyclerview/widget/RecyclerView;

.field private b:Landroid/widget/Button;

.field private c:Lmiuix/appcompat/app/AppCompatActivity;

.field private d:Lmiuix/appcompat/app/ActionBar;

.field private e:Ll2/f;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic b0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/AppCompatActivity;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    return-object p0
.end method

.method static synthetic c0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/fragment/CallLogFragment;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->j0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g:I

    return p0
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/fragment/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->i0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/antispam/ui/fragment/CallLogFragment;)Lmiuix/appcompat/app/ActionBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->d:Lmiuix/appcompat/app/ActionBar;

    return-object p0
.end method

.method private h0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    new-instance v1, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;

    invoke-direct {v1, p0, v0}, Lcom/miui/antispam/ui/fragment/CallLogFragment$b;-><init>(Lcom/miui/antispam/ui/fragment/CallLogFragment;Landroid/content/Context;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private i0(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const-string v0, "firewalltype"

    const-string v1, ""

    :try_start_0
    iget-object v2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lmiui/provider/ExtraContacts$Calls;->CONTENT_CONVERSATION_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "number = ? AND firewalltype >= ? AND firewalltype <= ?"

    const/4 v2, 0x3

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    const/4 p1, 0x1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p1

    const/4 p1, 0x2

    const/16 v9, 0xe

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p1

    const-string v8, "date DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_5

    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v2, :cond_4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_2

    if-eq v3, v9, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    const v2, 0x7f120d55

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    const v2, 0x7f120d63

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    const v2, 0x7f120d4c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    const v2, 0x7f120d51

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_a
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMarkTypeTag failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CallLogFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    return-object v1
.end method

.method private j0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.ADD_FIREWALL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.miui.securitycenter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "vnd.android.cursor.item/firewall-blacklist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->h:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->i:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "numbers"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e:Ll2/f;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->o(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->k0(Lq0/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public k0(Lq0/c;Landroid/database/Cursor;)V
    .locals 0
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
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e:Ll2/f;

    invoke-virtual {p1, p2}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->o(Landroid/database/Cursor;)Landroid/database/Cursor;

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lm2/f;->P(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->f:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {p1, v1, v2}, Lm2/f;->L(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f130042

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->f:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "number_presentation"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g:I

    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    check-cast p3, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e:Ll2/f;

    iget p3, p3, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;->a:I

    invoke-virtual {p2, p3}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/Cursor;

    const-string p3, "date"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Lm2/f;->n(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 p2, 0x1

    const p3, 0x7f120d8b

    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p2, 0x2

    const p3, 0x7f120db0

    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 21
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

    iget v1, v0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->g:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_0

    iget-object v1, v0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->b:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lq0/b;

    iget-object v8, v0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    sget-object v9, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    new-array v12, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v5

    const-string v11, "presentation <> ? AND firewalltype >= ? "

    const-string v13, "date DESC"

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Lq0/b;

    iget-object v15, v0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    sget-object v16, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/16 v17, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, v0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->f:Ljava/lang/String;

    aput-object v6, v4, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    const-string v18, " PHONE_NUMBERS_EQUAL(number, ?, 0) AND firewalltype >= ? "

    const-string v20, "date DESC"

    move-object v14, v1

    move-object/from16 v19, v4

    invoke-direct/range {v14 .. v20}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lmiuix/appcompat/app/Fragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getAppCompatActivity()Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->d:Lmiuix/appcompat/app/ActionBar;

    const p2, 0x7f0e0185

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0b080b

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->b:Landroid/widget/Button;

    new-instance v0, Lcom/miui/antispam/ui/fragment/CallLogFragment$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/fragment/CallLogFragment$a;-><init>(Lcom/miui/antispam/ui/fragment/CallLogFragment;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Ll2/f;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {p2, v0}, Ll2/f;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e:Ll2/f;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lmiuix/recyclerview/card/f;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->c:Lmiuix/appcompat/app/AppCompatActivity;

    invoke-direct {v0, v1}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->e:Ll2/f;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/CallLogFragment;->a:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/CallLogFragment;->h0()V

    return-void
.end method
