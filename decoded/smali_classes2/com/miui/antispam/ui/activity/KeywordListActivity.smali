.class public Lcom/miui/antispam/ui/activity/KeywordListActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/KeywordListActivity$h;,
        Lcom/miui/antispam/ui/activity/KeywordListActivity$g;,
        Lcom/miui/antispam/ui/activity/KeywordListActivity$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/common/base/BaseActivity;",
        "Landroidx/loader/app/a$a<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final o:Z


# instance fields
.field private a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

.field private d:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

.field private e:Lcom/miui/antispam/ui/activity/KeywordListActivity$f;

.field private f:Lmiui/provider/BatchOperation;

.field private g:Landroid/widget/Toast;

.field private h:J

.field private i:Ljava/lang/String;

.field private j:Landroid/view/MenuItem;

.field private k:I

.field private l:Z

.field private m:Landroid/view/inputmethod/InputMethodManager;

.field private n:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ldb/c;->e()Z

    move-result v0

    sput-boolean v0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->o:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->n:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->g:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/activity/KeywordListActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->t0(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lcom/miui/antispam/ui/activity/KeywordListActivity$g;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic i0()Z
    .locals 1

    sget-boolean v0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->o:Z

    return v0
.end method

.method static synthetic j0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Lmiui/provider/BatchOperation;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->n:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic m0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->h:J

    return-wide v0
.end method

.method static synthetic n0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->k:I

    return p0
.end method

.method static synthetic o0(Lcom/miui/antispam/ui/activity/KeywordListActivity;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->m:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method private p0()V
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0186

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0360

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f120693

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$d;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    const v3, 0x7f1206a8

    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$e;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private q0()V
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0186

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0360

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    new-instance v3, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f1206a5

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v3, 0x1040000

    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1206a8

    new-instance v3, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;

    invoke-direct {v3, p0, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$b;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/miui/antispam/ui/activity/KeywordListActivity$c;

    invoke-direct {v2, p0, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$c;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Landroid/widget/EditText;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private t0(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->n:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->e:Lcom/miui/antispam/ui/activity/KeywordListActivity$f;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "keyword"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-boolean v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->k:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "sim_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/provider/BatchOperation;->add(Landroid/content/ContentProviderOperation;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    invoke-virtual {v0}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    invoke-virtual {p1}, Lmiui/provider/BatchOperation;->size()I

    move-result p1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    invoke-virtual {p1}, Lmiui/provider/BatchOperation;->execute()Landroid/net/Uri;

    :cond_4
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

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->setData(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->s0(Lq0/c;Landroid/database/Cursor;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1206a4

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f1206a1

    new-instance v1, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity$a;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->q0()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setGestureLineEnableSupport(Z)V

    sget-boolean v1, Lcom/miui/antispam/ui/activity/KeywordListActivity;->o:Z

    if-eqz v1, :cond_0

    const v1, 0x7f13044b

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e0187

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const-string p1, "input_method"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->m:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "key_sim_id"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->k:I

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_black"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l:Z

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const v1, 0x7f1217fd

    const v2, 0x7f1217ff

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l:Z

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :goto_2
    const p1, 0x102000a

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    const p1, 0x7f0b0b81

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->b:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l:Z

    if-eqz v1, :cond_4

    const v1, 0x7f1217c9

    goto :goto_3

    :cond_4
    const v1, 0x7f1217cb

    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$h;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->d:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    new-instance p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    invoke-direct {p1, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->d:Lcom/miui/antispam/ui/activity/KeywordListActivity$h;

    invoke-virtual {p1, p0, v2}, Lcom/miui/antispam/ui/view/a;->w(Landroid/app/Activity;Lcom/miui/antispam/ui/view/RecyclerViewExt$e;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/a;

    move-result-object p1

    invoke-virtual {p1, v0, v1, p0}, Landroidx/loader/app/a;->e(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lq0/c;

    new-instance p1, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;

    invoke-direct {p1, p0, v1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$f;-><init>(Lcom/miui/antispam/ui/activity/KeywordListActivity;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->e:Lcom/miui/antispam/ui/activity/KeywordListActivity$f;

    new-instance p1, Lmiui/provider/BatchOperation;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "antispam"

    invoke-direct {p1, v0, v1}, Lmiui/provider/BatchOperation;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->f:Lmiui/provider/BatchOperation;

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    new-instance v0, Lmiuix/recyclerview/card/f;

    invoke-direct {v0, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    check-cast p3, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;

    iget-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    iget p3, p3, Lcom/miui/antispam/ui/view/RecyclerViewExt$f;->a:I

    invoke-virtual {p2, p3}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;

    iget p3, p2, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;->a:I

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->h:J

    iget-object p2, p2, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->i:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const p2, 0x7f120d93

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x3

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    const p2, 0x7f120dac

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-interface {p1, p3, v0, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 7
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

    new-instance p1, Lq0/b;

    sget-object v2, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    const/4 p2, 0x2

    new-array v5, p2, [Ljava/lang/String;

    iget-boolean p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->l:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v5, v1

    iget p2, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->k:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, "type = ? AND sim_id = ? "

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lq0/b;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f120d87

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    const v0, 0x7f080302

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->j:Landroid/view/MenuItem;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->p0()V

    const/4 p1, 0x1

    return p1
.end method

.method public r0(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
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
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v2, v4}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$b;-><init>(ILjava/lang/String;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public s0(Lq0/c;Landroid/database/Cursor;)V
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
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->n:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->n:Ljava/util/HashSet;

    const-string v0, "data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "KeywordListActivity"

    const-string v1, "Cursor err when caching keywords: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    invoke-virtual {p0, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity;->r0(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->setData(Ljava/util/List;)V

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->c:Lcom/miui/antispam/ui/activity/KeywordListActivity$g;

    invoke-virtual {p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g;->getItemCount()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    const/16 p2, 0x8

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity;->a:Lcom/miui/antispam/ui/view/RecyclerViewExt;

    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
