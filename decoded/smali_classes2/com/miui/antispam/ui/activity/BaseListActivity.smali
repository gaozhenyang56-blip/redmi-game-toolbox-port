.class public abstract Lcom/miui/antispam/ui/activity/BaseListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;
.implements Lcom/miui/antispam/ui/view/RecyclerViewExt$e;
.implements Lm2/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/BaseListActivity$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/miui/antispam/ui/view/RecyclerViewExt$e;",
        "Lm2/d$b;"
    }
.end annotation


# static fields
.field private static final q:[Ljava/lang/String;

.field private static final r:Z

.field private static final s:Z


# instance fields
.field protected a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

.field protected b:Ll2/d;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/TextView;

.field protected e:Landroid/widget/ImageView;

.field protected f:Landroid/widget/CheckBox;

.field protected g:Landroid/widget/CheckBox;

.field protected h:Landroid/view/View;

.field protected i:Landroid/app/Dialog;

.field protected j:Lmiuix/appcompat/app/AlertDialog;

.field protected k:Lcom/miui/antispam/ui/activity/BaseListActivity$g;

.field protected l:I

.field protected m:Z

.field protected n:Z

.field private o:Landroid/view/MenuItem;

.field private p:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lm2/h$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "data1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->q:[Ljava/lang/String;

    invoke-static {}, Lx4/a0;->y()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    invoke-static {}, Ldb/c;->e()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->s:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/antispam/ui/activity/BaseListActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/BaseListActivity$a;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->p:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/BaseListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->g0()V

    return-void
.end method

.method static synthetic e0()Z
    .locals 1

    sget-boolean v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    return v0
.end method

.method private g0()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {v3}, Lcom/miui/antispam/ui/view/a;->q()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ll2/d;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll2/d$c;

    iget-object v7, v6, Ll2/d$c;->c:Ljava/lang/String;

    const-string v8, "***"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, v6, Ll2/d$c;->e:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v6, Ll2/d$c;->c:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v6, v6, Ll2/d$c;->c:Ljava/lang/String;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    move v7, v3

    goto :goto_2

    :cond_3
    move v7, v4

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    new-array v3, v4, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    const/4 v10, 0x1

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lm2/f;->N(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-array v0, v4, [Ljava/lang/Integer;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [Ljava/lang/Integer;

    iget v9, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    const/4 v10, 0x1

    move-object v5, p0

    invoke-static/range {v5 .. v10}, Lm2/f;->N(Landroid/content/Context;[Ljava/lang/String;I[Ljava/lang/Integer;II)V

    :cond_5
    return-void
.end method

.method private h0(Landroid/view/ActionMode;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result v0

    move-object v1, p1

    check-cast v1, Lmiuix/view/g;

    if-eqz p2, :cond_0

    invoke-static {v0}, Lx4/r0;->b(Z)I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lx4/r0;->c(Z)I

    move-result p2

    :goto_0
    const v0, 0x102001a

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    iget-boolean p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/a;->p()I

    move-result p2

    const v0, 0x7f0b035e

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_2
    return-void
.end method

.method private o0()Landroid/content/Intent;
    .locals 6

    sget-boolean v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.dir/phone_v2"

    const-string v3, "android.intent.category.DEFAULT"

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.PICK"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.google.android.contacts"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.android.contacts.action.GET_MULTIPLE_PHONES"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.include_unknown_numbers"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.extra.initial_picker_tab"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0x1f4

    const-string v3, "com.android.contacts.extra.MAX_COUNT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lx4/f1;->F(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
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

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ll2/d;->setData(Ljava/util/List;)V

    return-void
.end method

.method public H(Landroid/view/ActionMode;IZ)V
    .locals 0

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p2, p0, p1}, Lcom/miui/antispam/ui/view/a;->x(Landroid/content/Context;Landroid/view/ActionMode;)V

    sget-boolean p2, Lcom/miui/antispam/ui/activity/BaseListActivity;->s:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/a;->p()I

    move-result p2

    iget-object p3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p3}, Ll2/d;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity;->h0(Landroid/view/ActionMode;Z)V

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity;->p0(Lq0/c;Landroid/database/Cursor;)V

    return-void
.end method

.method protected f0()V
    .locals 4

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_0

    const v1, 0x7f030059

    goto :goto_0

    :cond_0
    const v1, 0x7f03005b

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_2

    const v1, 0x7f03005a

    goto :goto_1

    :cond_2
    const v1, 0x7f03005c

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->o0()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v3, v0, v2

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v0, v0, v2

    aput-object v0, v1, v2

    move-object v0, v1

    :cond_3
    :goto_2
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121792

    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/miui/antispam/ui/activity/BaseListActivity$d;

    invoke-direct {v2, p0}, Lcom/miui/antispam/ui/activity/BaseListActivity$d;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method protected i0()V
    .locals 5

    new-instance v0, Lcom/miui/antispam/ui/activity/BaseListActivity$f;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/BaseListActivity$f;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected j0(IJLjava/lang/String;)V
    .locals 1

    new-instance p4, Lcom/miui/antispam/ui/activity/BaseListActivity$c;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/miui/antispam/ui/activity/BaseListActivity$c;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;IJ)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Void;

    const/4 p3, 0x0

    const/4 v0, 0x0

    aput-object v0, p2, p3

    invoke-virtual {p4, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected k0(Ll2/d$c;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/antispam/ui/activity/AddPhoneListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    const-string v2, "is_black"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-wide v1, p1, Ll2/d$c;->a:J

    const-string v3, "id_edit_blacklist"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p1, Ll2/d$c;->c:Ljava/lang/String;

    const-string v2, "number_edit_blacklist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v1, p1, Ll2/d$c;->d:I

    const-string v2, "state_edit_blacklist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p1, Ll2/d$c;->b:I

    const-string v2, "sync_edit_blacklist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p1, Ll2/d$c;->e:Ljava/lang/String;

    const-string v2, "note_edit_blacklist"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "from"

    const-string v2, "main"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    iget p1, p1, Ll2/d$c;->f:I

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public l0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 10
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

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-string v1, "sync_dirty"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v6, 0x40

    if-le v2, v6, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v6, v1

    const-string v1, "state"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v1, "notes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "sim_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v1, Ll2/d$c;

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Ll2/d$c;-><init>(JILjava/lang/String;ILjava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    return-object v0
.end method

.method public abstract m0()Ll2/d;
.end method

.method protected n0(Ljava/util/List;)Landroid/app/Dialog;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/Dialog;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->i:Landroid/app/Dialog;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/antispam/ui/activity/BaseListActivity$g;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/BaseListActivity$g;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->k:Lcom/miui/antispam/ui/activity/BaseListActivity$g;

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_0

    const v1, 0x7f12069a

    goto :goto_0

    :cond_0
    const v1, 0x7f1206c9

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_1

    const v1, 0x7f12069b

    goto :goto_1

    :cond_1
    const v1, 0x7f1206ca

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->k:Lcom/miui/antispam/ui/activity/BaseListActivity$g;

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->i:Landroid/app/Dialog;

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->k:Lcom/miui/antispam/ui/activity/BaseListActivity$g;

    invoke-virtual {v0, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity$g;->a(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->i:Landroid/app/Dialog;

    return-object p1
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, p1, v0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->r0(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_1
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity;->r0(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_2
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/a;->r()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/miui/antispam/ui/view/a;->t(Z)V

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p2, p0, p1}, Lcom/miui/antispam/ui/view/a;->x(Landroid/content/Context;Landroid/view/ActionMode;)V

    sget-boolean p2, Lcom/miui/antispam/ui/activity/BaseListActivity;->s:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p2}, Lcom/miui/antispam/ui/view/a;->r()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity;->h0(Landroid/view/ActionMode;Z)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x1020019 -> :sswitch_3
        0x102001a -> :sswitch_2
        0x7f0b035d -> :sswitch_1
        0x7f0b035e -> :sswitch_0
    .end sparse-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/16 v0, 0x3ef

    const/4 v1, 0x0

    if-ne p1, v0, :cond_8

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "has_phone_number"

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id = "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "data1"

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {v1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    goto :goto_2

    :catch_0
    move-exception p3

    move-object v9, v1

    move-object v1, p1

    move-object p1, v9

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_10

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catchall_1
    move-exception p2

    move-object p1, v1

    goto :goto_2

    :catch_1
    move-exception p3

    move-object p1, v1

    :goto_1
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6

    :catchall_2
    move-exception p2

    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p2

    :cond_8
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_11

    const-string p1, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_11

    array-length p3, p1

    if-nez p3, :cond_9

    goto/16 :goto_7

    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_d

    aget-object v4, p1, v3

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "content"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_a

    const/16 v5, 0x2c

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_b
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "tel"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_d
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_id IN ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/miui/antispam/ui/activity/BaseListActivity;->q:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :cond_e
    if-nez v1, :cond_f

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_f

    return-void

    :cond_f
    if-eqz v1, :cond_10

    :goto_5
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception p1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_10
    :goto_6
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->f:Landroid/widget/CheckBox;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->g:Landroid/widget/CheckBox;

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_11

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/activity/BaseListActivity;->n0(Ljava/util/List;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_11
    :goto_7
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    iget v0, v0, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;->a:I

    invoke-virtual {v1, v0}, Ll2/d;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ll2/d$c;

    iget-object v1, v0, Ll2/d$c;->c:Ljava/lang/String;

    const-string v2, "***"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->k0(Ll2/d$c;)V

    goto/16 :goto_4

    :pswitch_2
    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    const p1, 0x7f1206b3

    goto :goto_1

    :cond_1
    const p1, 0x7f1206b4

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7f1206b5

    goto :goto_1

    :cond_3
    const p1, 0x7f1206b9

    :goto_1
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v4, :cond_4

    const v4, 0x7f1206b7

    goto :goto_2

    :cond_4
    const v4, 0x7f1206bb

    :goto_2
    invoke-virtual {v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f1206b8

    new-instance v4, Lcom/miui/antispam/ui/activity/BaseListActivity$b;

    invoke-direct {v4, p0, v0}, Lcom/miui/antispam/ui/activity/BaseListActivity$b;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;Ll2/d$c;)V

    invoke-virtual {p1, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_4

    :pswitch_3
    iget-object p1, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lm2/f;->O(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    iget-object p1, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lm2/f;->P(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_5
    iget-object p1, v0, Ll2/d$c;->c:Ljava/lang/String;

    iget v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    sub-int/2addr v0, v2

    invoke-static {p0, p1, v0}, Lm2/f;->L(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "content://antispam"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, v0, Ll2/d$c;->c:Ljava/lang/String;

    const-string v5, "getBlockKeyword"

    invoke-virtual {p1, v1, v5, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v1, "blockKeyword"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    iget-object v0, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lm2/f;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :pswitch_7
    iget-object p1, v0, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {p0, p1, v2}, Lm2/f;->M(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setGestureLineEnableSupport(Z)V

    sget-boolean v0, Lcom/miui/antispam/ui/activity/BaseListActivity;->s:Z

    if-eqz v0, :cond_0

    const v0, 0x7f13044b

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0183

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-static {}, Lm2/a;->p()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->n:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "key_sim_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->l:I

    const p1, 0x1020004

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->c:Landroid/view/View;

    const p1, 0x7f0b036b

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->e:Landroid/widget/ImageView;

    const p1, 0x7f0b036c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->d:Landroid/widget/TextView;

    const p1, 0x102000a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->m0()Ll2/d;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p1, p0, p0}, Lcom/miui/antispam/ui/view/a;->w(Landroid/app/Activity;Lcom/miui/antispam/ui/view/RecyclerViewExt$e;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e04bd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->h:Landroid/view/View;

    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->f:Landroid/widget/CheckBox;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->h:Landroid/view/View;

    const v0, 0x7f0b0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->g:Landroid/widget/CheckBox;

    sget-boolean p1, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->f:Landroid/widget/CheckBox;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    invoke-static {p0}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object p1

    invoke-virtual {p1, p0}, Lm2/d;->g(Lm2/d$b;)V

    return-void
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/view/a;->l()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7f0b035e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->o:Landroid/view/MenuItem;

    invoke-interface {p2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    sget-boolean p2, Lcom/miui/antispam/ui/activity/BaseListActivity;->s:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/common/base/BaseActivity;->isDarkModeEnable()Z

    move-result p2

    check-cast p1, Lmiuix/view/g;

    const v1, 0x1020019

    invoke-static {p2}, Lx4/r0;->a(Z)I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3, v2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    const v1, 0x102001a

    invoke-static {p2}, Lx4/r0;->c(Z)I

    move-result p2

    invoke-interface {p1, v1, v3, p2}, Lmiuix/view/g;->setButton(ILjava/lang/CharSequence;I)V

    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    check-cast p3, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    iget p3, p3, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;->a:I

    invoke-virtual {p2, p3}, Ll2/d;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll2/d$c;

    iget-object p3, p2, Ll2/d$c;->c:Ljava/lang/String;

    const-string v0, "***"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070114

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p3, :cond_1

    iget-object v0, p2, Ll2/d$c;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p2, Ll2/d$c;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Ll2/d$c;->c:Ljava/lang/String;

    const-string v3, ""

    const-string v4, " "

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v0, :cond_5

    iget-object v0, p2, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lm2/f;->i(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sget-boolean v2, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    if-nez v2, :cond_2

    iget-object v2, p2, Ll2/d$c;->c:Ljava/lang/String;

    invoke-static {p0, v2}, Lm2/f;->k(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    if-lez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->n:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lm2/a;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    const v3, 0x7f120d88

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_4
    if-lez v2, :cond_5

    const/4 v0, 0x4

    const v2, 0x7f120d8a

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    iget-object p2, p2, Ll2/d$c;->c:Ljava/lang/String;

    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-boolean p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->n:Z

    if-eqz p2, :cond_6

    invoke-static {}, Lm2/a;->o()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_6
    const/4 p2, 0x5

    const v0, 0x7f120d8b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_7
    const/4 p2, 0x6

    const v0, 0x7f120db0

    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_8
    iget-boolean p2, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->n:Z

    if-eqz p2, :cond_9

    invoke-static {}, Lm2/a;->o()Z

    move-result p2

    if-nez p2, :cond_9

    if-nez p3, :cond_a

    :cond_9
    const/16 p2, 0xa

    const p3, 0x7f120d93

    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_a
    const/16 p2, 0x8

    iget-boolean p3, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz p3, :cond_b

    const p3, 0x7f120d89

    goto :goto_3

    :cond_b
    const p3, 0x7f120dd8

    :goto_3
    invoke-interface {p1, v1, p2, v1, p3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x64

    const v2, 0x7f120d87

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->o:Landroid/view/MenuItem;

    const v0, 0x7f080302

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    invoke-static {p0}, Lm2/d;->h(Landroid/content/Context;)Lm2/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lm2/d;->l(Lm2/d$b;)V

    return-void
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/view/a;->m()V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->o:Landroid/view/MenuItem;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->f0()V

    const/4 p1, 0x1

    return p1
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public p0(Lq0/c;Landroid/database/Cursor;)V
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
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f080d93

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->d:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v0, :cond_2

    const v0, 0x7f120417

    goto :goto_0

    :cond_2
    const v0, 0x7f121c97

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->b:Ll2/d;

    new-instance v0, Lm2/h;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->p:Ljava/util/Comparator;

    const-string v2, "number"

    invoke-direct {v0, p2, v2, v1}, Lm2/h;-><init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Comparator;)V

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->l0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Ll2/d;->setData(Ljava/util/List;)V

    return-void
.end method

.method protected q0()V
    .locals 2

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/BaseListActivity;->o0()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/miui/antispam/ui/activity/BaseListActivity;->r:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x3ef

    goto :goto_0

    :cond_1
    const/16 v1, 0x3ee

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected r0(Landroid/view/ActionMode;Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->j:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    const v2, 0x7f1206aa

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const v1, 0x7f1206b7

    goto :goto_0

    :cond_2
    const v1, 0x7f1206bb

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/BaseListActivity;->m:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    const v1, 0x7f120694

    goto :goto_1

    :cond_3
    const v1, 0x7f1206b5

    goto :goto_1

    :cond_4
    const v1, 0x7f1206b9

    :goto_1
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    const v2, 0x7f1206b8

    :goto_2
    new-instance v1, Lcom/miui/antispam/ui/activity/BaseListActivity$e;

    invoke-direct {v1, p0, p2, p1}, Lcom/miui/antispam/ui/activity/BaseListActivity$e;-><init>(Lcom/miui/antispam/ui/activity/BaseListActivity;ZLandroid/view/ActionMode;)V

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_6
    return-void
.end method
