.class public Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;
.super Lcom/miui/common/base/BaseAcquireCtaActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;,
        Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$e;,
        Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$d;
    }
.end annotation


# static fields
.field public static h:Ljava/lang/String; = "mode"

.field public static i:Ljava/lang/String; = "state"

.field public static j:Ljava/lang/String; = "address_code"

.field public static k:Ljava/lang/String; = "sim_id"

.field public static l:Ljava/lang/String; = "is_add_complete"

.field public static m:Ljava/lang/String; = "needConfirm"


# instance fields
.field private a:Lmiuix/appcompat/app/ProgressDialog;

.field private b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;

.field private c:I

.field private d:[Ljava/lang/String;

.field private e:[I

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;-><init>()V

    return-void
.end method

.method static synthetic d0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->c:I

    return p0
.end method

.method static synthetic e0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->d:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->p0(I)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->e:[I

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->f:I

    return p0
.end method

.method static synthetic i0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->g:I

    return p0
.end method

.method static synthetic j0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;I[Ljava/lang/String;[III)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->o0(I[Ljava/lang/String;[III)V

    return-void
.end method

.method static synthetic k0(Ljava/lang/String;IIII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->m0(Ljava/lang/String;IIII)V

    return-void
.end method

.method static synthetic l0(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->n0()V

    return-void
.end method

.method private static m0(Ljava/lang/String;IIII)V
    .locals 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez p4, :cond_3

    sget p4, Lb2/a$c;->a:I

    if-eq p2, p4, :cond_1

    sget p4, Lb2/a$c;->b:I

    if-ne p2, p4, :cond_2

    :cond_1
    invoke-static {v0}, Lm2/a;->k(Landroid/content/Context;)Z

    move-result p4

    if-nez p4, :cond_2

    invoke-static {p0, p1, p2, p3, v1}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->m0(Ljava/lang/String;IIII)V

    :cond_2
    invoke-static {p0, p1, p2, p3, v2}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->m0(Ljava/lang/String;IIII)V

    goto :goto_2

    :cond_3
    const/4 v3, -0x1

    if-ne p1, v3, :cond_4

    move-object v4, p0

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-ne v2, p2, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    invoke-static {v0, v4, p3, p2, p4}, Lm2/f;->z(Landroid/content/Context;Ljava/lang/String;III)Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "number"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "state"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v5, "type"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v5, "sim_id"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eq p1, v3, :cond_6

    const-string p1, "notes"

    invoke-virtual {v2, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_7
    invoke-static {v0, v4, p3, v1, p4}, Lm2/f;->J(Landroid/content/Context;Ljava/lang/String;III)V

    :goto_2
    return-void
.end method

.method private n0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private o0(I[Ljava/lang/String;[III)V
    .locals 12

    move-object v7, p0

    move-object v2, p2

    invoke-virtual {p0}, Lcom/miui/common/base/BaseAcquireCtaActivity;->acquireCTAPermissionsForResult()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v2, :cond_4

    array-length v0, v2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p5, 0x1

    invoke-static {p0, v0}, Lm2/a;->j(Landroid/content/Context;I)Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_2

    invoke-static {p0, v0, v8}, Lm2/a;->t(Landroid/content/Context;IZ)V

    :cond_2
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v8}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lmiuix/appcompat/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, v9}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lmiuix/appcompat/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    array-length v1, v2

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    iget-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-nez p1, :cond_3

    const v1, 0x7f1206a6

    goto :goto_0

    :cond_3
    const v1, 0x7f1206a7

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->setTitle(I)V

    iget-object v0, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    new-instance v11, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;-><init>(I[Ljava/lang/String;[IIILcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V

    iput-object v11, v7, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v8, [Ljava/lang/Void;

    aput-object v10, v1, v9

    invoke-virtual {v11, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_4
    :goto_1
    return-void
.end method

.method private p0(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/base/BaseAcquireCtaActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x12c

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->c:I

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->e:[I

    iget v4, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->f:I

    iget v5, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->g:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->o0(I[Ljava/lang/String;[III)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-static {p0}, Lm2/f;->w(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->f:I

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->c:I

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->g:I

    const-string v1, "numbers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->d:[Ljava/lang/String;

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->e:[I

    sget-object v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120692

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120691

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x104000a

    new-instance v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$d;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$a;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$b;-><init>(Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->c:I

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->d:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->e:[I

    iget v4, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->f:I

    iget v5, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->g:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->o0(I[Ljava/lang/String;[III)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->b:Lcom/miui/antispam/ui/activity/AddAntiSpamActivity$c;

    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/AddAntiSpamActivity;->a:Lmiuix/appcompat/app/ProgressDialog;

    :cond_1
    return-void
.end method
