.class public Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;
.super Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;
.source "SourceFile"


# static fields
.field public static final E:[Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private C:Z

.field private D:Z

.field private x:Landroid/view/MenuItem;

.field private y:Landroid/view/MenuItem;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "blocked_threads._id"

    const-string v1, "address"

    const-string v2, "name"

    const-string v3, "date"

    const-string v4, "message_count"

    const-string v5, "unread_count"

    const-string v6, "snippet"

    const-string v7, "snippet_cs"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->E:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z:I

    iput v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->A:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->C:Z

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lm2/f;->E(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->D:Z

    return-void
.end method

.method private A0()V
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "first_load_count"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->C:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v1

    invoke-virtual {v1, v5, v0, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, v4, v6, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, v3, v6, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, v2, v6, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    iput-boolean v5, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->C:Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v1

    invoke-virtual {v1, v5, v0, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, v4, v6, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, v3, v6, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    invoke-virtual {v0, v2, v6, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    :goto_0
    return-void
.end method

.method private B0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z:I

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lm2/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    iget v3, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->A:I

    if-lez v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    iget v3, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z:I

    if-lez v3, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-static {}, Lm2/c;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    iget v3, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z:I

    if-lez v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_7
    :goto_5
    return-void
.end method

.method static synthetic u0(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;[J)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->v0([J)V

    return-void
.end method

.method private v0([J)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q0()V

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->k:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Lm2/c;->f(Landroid/content/ContentResolver;[J)V

    return-void
.end method

.method private x0()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->e:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1200f2

    goto :goto_0

    :cond_0
    const v0, 0x7f1200f9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p0(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method public static y0(Z)Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "showTitle"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z0(Lq0/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public g0()I
    .locals 1

    const v0, 0x7f080990

    return v0
.end method

.method public h0(Landroid/content/Context;)Ll2/g;
    .locals 1

    new-instance v0, Ll2/i;

    invoke-direct {v0, p1}, Ll2/i;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public i0(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "maml/antispam/dark/sms"

    goto :goto_0

    :cond_0
    const-string p1, "maml/antispam/light/sms"

    :goto_0
    return-object p1
.end method

.method public j0()Ljava/lang/String;
    .locals 1

    const-string v0, "reason"

    return-object v0
.end method

.method protected n0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
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
    const v1, 0x7f1216cd

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_2

    const v1, 0x7f1216cb

    goto :goto_1

    :cond_2
    const v1, 0x7f1216cc

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12046e

    new-instance v2, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;

    invoke-direct {v2, p0, p2, p1}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$b;-><init>(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;ZLandroid/view/ActionMode;)V

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
    .locals 10
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

    iget v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->v:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    const-string v2, "reason = ?"

    move-object v7, v2

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    new-instance p1, Lq0/b;

    iget-object v1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    sget-object v5, Lm2/a$c;->c:Landroid/net/Uri;

    sget-object v6, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->E:[Ljava/lang/String;

    const-string v8, "first_load_count"

    if-nez v7, :cond_1

    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    move-object v8, v0

    goto :goto_1

    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v4

    move-object v8, v2

    :goto_1
    const-string v9, "date DESC"

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v3 .. v9}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    if-ne p1, v2, :cond_4

    new-instance p1, Lq0/b;

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    sget-object v5, Lm2/a$c;->c:Landroid/net/Uri;

    sget-object v6, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->E:[Ljava/lang/String;

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    :goto_2
    move-object v8, v1

    const-string v9, "date DESC"

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v3 .. v9}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_4
    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    new-instance p1, Lq0/b;

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    sget-object v4, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

    const-string p2, "sum(message_count)"

    const-string v0, "sum(unread_count)"

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5
    const/4 p2, 0x4

    if-ne p1, p2, :cond_6

    new-instance p1, Lq0/b;

    iget-object v3, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    sget-object v4, Lm2/a$c;->c:Landroid/net/Uri;

    sget-object v5, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->E:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date DESC"

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_6
    return-object v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    const v0, 0x7f0f0012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p2, 0x7f0b0956

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    const p2, 0x7f0b02f8

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->B0()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->onDestroy()V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lm2/c;->h()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->q0()V

    :cond_0
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x:Landroid/view/MenuItem;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->c:Lcom/miui/antispam/ui/activity/MainActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$a;

    invoke-direct {v2, p0, v0}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain$a;-><init>(Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;Landroid/content/Context;)V

    invoke-static {v2}, Lx4/f;->b(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {v0, v1}, Ll2/g;->z(Z)V

    const-string v0, "sms_all_read"

    invoke-static {v0}, Lc2/a;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->y:Landroid/view/MenuItem;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lc2/a;->q()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->o0(Landroid/view/ActionMode;Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->onResume()V

    invoke-static {}, Lc2/a;->n()V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->e:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->D:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->A0()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->x0()V

    :goto_1
    return-void
.end method

.method public s0()V
    .locals 3

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    invoke-static {p0}, Landroidx/loader/app/a;->c(Landroidx/lifecycle/v;)Landroidx/loader/app/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/a;->g(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    return-void
.end method

.method public w0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 13
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

    if-eqz v1, :cond_2

    :cond_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v1, "address"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v1, "message_count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v1, "unread_count"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v1, "snippet"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v1, "snippet_cs"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v1, "reason"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v1, "data1"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    move-object v12, v1

    new-instance v1, Ll2/i$c;

    move-object v2, v1

    invoke-direct/range {v2 .. v12}, Ll2/i$c;-><init>(ILjava/lang/String;IILjava/lang/String;IJILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public z0(Lq0/c;Landroid/database/Cursor;)V
    .locals 3
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

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->t0(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->A:I

    :cond_3
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->i:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->z:I

    if-lez p1, :cond_4

    invoke-virtual {p0}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->l0()V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    const p1, 0x7f120419

    invoke-virtual {p0, p1}, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->p0(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->b:Lmiuix/nestedheader/widget/NestedHeaderLayout;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->B0()V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p1, v1}, Ll2/g;->z(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->w0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll2/g;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p1, v1}, Ll2/g;->z(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/fragment/BaseFragmentWithoutTab;->d:Ll2/g;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/fragment/SmsLogFragmentInMain;->w0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll2/g;->setData(Ljava/util/List;)V

    :cond_7
    :goto_1
    return-void
.end method
